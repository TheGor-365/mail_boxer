class CreateDisscussions < ActiveRecord::Migration[6.0]
  def change
    create_table :disscussions do |t|
      t.string :title

      t.timestamps
    end
  end
end
