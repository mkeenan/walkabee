class WordsController < ApplicationController

respond_to :json, :html

def index
    @words = Word.all
    respond_with @words
  end

  def show
    @word = Word.find_by_name(params[:id])
    render :layout => 'basic'
  end

# new/create not being used in this version. Set up for future functionality.
  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    if @word.save
      redirect_to words_path, notice: 'Word was successfully added.'
    else
      render :new
    end
  end


private

	def word_params
		params.require(:word).permit(:name, :image, :category_id)
end


end
