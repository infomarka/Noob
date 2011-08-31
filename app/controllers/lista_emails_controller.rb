class ListaEmailsController < ApplicationController
  
  def create
    @lista_email = ListaEmail.new params[:lista_email]
    
    @lista_email.save
    redirect_to root_path, :notice => "E-mail cadastrado com sucesso!!"
  end
end
