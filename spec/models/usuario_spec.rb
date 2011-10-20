require 'spec_helper'

describe Usuario do

  before do
    @user = Usuario.new
    @usuario = Usuario.create(:email => "loL@lolmail.com", :password => "123456")
    @grupo = Grupo.create(:nome => "LOLgrupo", :descricao => "lol", :dono => @user)
    @grupo1 = Grupo.create(:nome => "NOOBgrupo", :descricao => "Noob", :dono => @user)
  end
  
  it 'testa se usuario tem e-mail' do
    @user.password = "123456"
    @user.save.should be_false
  end

  it 'testa se usuario tem senha' do
    @user.email = "loL@lolmail.com"
    @user.save.should be_false
  end

  it 'testa se o usuario e membro de varios grupos' do
    @grupo.usuarios << @usuario
    @usuario.grupos << @grupo1
    @grupo.usuarios[0].should be_equal @usuario
    @usuario.grupos[1].should be_equal @grupo1
  end

end
