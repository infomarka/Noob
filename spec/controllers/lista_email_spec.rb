require 'spec_helper'

describe "ListaEmail" do
  before(:each) do
    @lista_email = ListaEmail.new
  end

  it "email sem @ retorna falso" do
    @lista_email.email = 'a.com'
    @lista_email.valida_email.should be_equal false
  end
  
end

