class ApplicationController < ActionController::Base
  protect_from_forgery
  def index
    @lista_email = ListaEmail.new
    @landing_page = false
  end
end
