class DisscussionsController < InheritedResources::Base

  private

    def disscussion_params
      params.require(:disscussion).permit(:title)
    end

end
