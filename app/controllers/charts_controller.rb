class ChartsController < ApplicationController

  include ChartsHelper

  def france
    @charts_fr_free_app = retrieve_charts("fr", "free") 
    @charts_fr_grossing_app = retrieve_charts("fr", "grossing") 
    @charts_fr_ipad_free_app = retrieve_charts("fr", "freeipad") 
    @charts_fr_ipad_grossing_app = retrieve_charts("fr", "grossingipad") 
  end

  def uk
    @charts_uk_free_app = retrieve_charts("uk", "free") 
    @charts_uk_grossing_app = retrieve_charts("uk", "grossing") 
    @charts_uk_ipad_free_app = retrieve_charts("uk", "freeipad") 
    @charts_uk_ipad_grossing_app = retrieve_charts("uk", "grossingipad") 
  end

  def germany
    @charts_de_free_app = retrieve_charts("de", "free") 
    @charts_de_grossing_app = retrieve_charts("de", "grossing") 
    @charts_de_ipad_free_app = retrieve_charts("de", "freeipad") 
    @charts_de_ipad_grossing_app = retrieve_charts("de", "grossingipad") 
  end

  def russia
    @charts_ru_free_app = retrieve_charts("ru", "free") 
    @charts_ru_grossing_app = retrieve_charts("ru", "grossing") 
    @charts_ru_ipad_free_app = retrieve_charts("ru", "freeipad") 
    @charts_ru_ipad_grossing_app = retrieve_charts("ru", "grossingipad") 
  end

end