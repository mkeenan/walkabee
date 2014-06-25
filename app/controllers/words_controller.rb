class WordsController < ApplicationController

respond_to :json, :html

def index
    @words = Word.all
    respond_with @words
  end

  # GET /words/1
  def show
    @words = Word.find(params[:id])
  end

  # GET /words/new
  def new
    @word = Word.new
  end

  # GET /words/edit
  def edit
  end

  # POST /words
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
