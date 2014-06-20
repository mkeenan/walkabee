class WordsController < ApplicationController

def index
    @words = Word.all
  end

  # GET /words/1
  def show
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
		params.require(:word).permit(:name, :image)
end


end
