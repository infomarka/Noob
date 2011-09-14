require 'spec_helper'
  
def valida (nome, valor)
  @lista_email.email = nome
  @lista_email.valida_email.should be_equal valor
end

describe "ListaEmail" do
  before(:each) do
    @lista_email = ListaEmail.new
  end

  it "email sem @ retorna falso" do
    valida "a.com", false
  end
  
  it "email sem . retorna falso" do
    valida "a@", false
  end
  
  it "email sem . depois do @ retorna falso" do
    valida "a.@", false
  end
  
  it "email sem dominio retorna falso" do
    valida '@.', false
  end
  
end

