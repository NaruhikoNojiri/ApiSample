class PoemsController < ApplicationController
  def index
    @poems = Poem.all
    render json: @poems
  end
  def show
    @poem = Poem.find(params[:id])
    render json: @poem
  end

  private
    def poem_params
      params.require(:poem).permit(:title, :content, :auther)
    end
end
