class CommentsController < ApplicationController
  before_filter :set_motel

  def create
    @comment = @motel.comments.new description: params[:comment][:description]
    if @comment.save
      redirect_to(:back, :notice => "the comment added successful.")
    else
      redirect_to(root_path, :notice => "Something went wrong.")
    end
  end

  private
    def set_motel
      @motel = Motel.find(params[:motel_id])
    end

end
