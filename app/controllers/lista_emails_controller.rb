# coding: utf-8

class ListaEmailsController < ApplicationController
  
  def create
    @lista_email = ListaEmail.new params[:lista_email]
    if @lista_email.valida_email
      @lista_email.save
      redirect_to root_path, :notice => "E-mail cadastrado com sucesso!!"
    else
      redirect_to root_path, :alert => "E-mail inválido!!"
    end
  end
end
