class WordsController < ApplicationController

def index
    @words = Word.all
  end

  # GET /cars/1
  def show
  end

  # GET /cars/new
  def new
    @word = Word.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
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
		params.require(:word).permit(:title, :image)
end


end
