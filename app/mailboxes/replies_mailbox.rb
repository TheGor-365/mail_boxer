class RepliesMailbox < ApplicationMailbox
  MATCHER = /reply\-(.+)@reply.example.com/i
  # mail
  # inbound_email => ActionMailbox::InboundEmail record

  before_processing :ensure_user

  def process
    return if user.nil?

    disscussion.comments.create(
      user: user,
      body: mail.decoded
    )
  end

  def user
    @user ||= User.find_by(email: mail.from)
  end

  def disscussion
    @disscussion ||= Disscussion.find(disscussion_id)
  end

  def disscussion_id
    recipient = mail.recipients.find { |r| MATCHER.match?(r) }
    recipient[MATCHER, 1]
  end

  def ensure_user
    if user.nil?
      bounce_with UserMailer.missing(inbound_email)
  end
end
