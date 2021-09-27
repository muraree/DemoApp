class SentencesController < ApplicationController
  def index
    @sentences = Sentence.all
  end

  def show
    @sentence = Sentence.find_by(params[:id])
  end

  private

  def sentence_params
    params.require(:sentence).permit(:description)
  end
end
