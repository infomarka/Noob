#encoding: UTF-8
require 'spec_helper'

describe Grupo do

  before do
    @usuario = Usuario.create(:email => "loL@lolmail.com", :password => "123456")
    @usuario1 = Usuario.create(:email => "loL1@lolmail.com", :password => "123456")
    @usuario2 = Usuario.create(:email => "loL2@lolmail.com", :password => "123456")
    @grupo = Grupo.create(:nome => "LOLgrupo", :descricao => "lol", :dono => @usuario)
    @grupo1 = Grupo.create(:nome => "NOOBgrupo", :descricao => "Noob", :dono => @usuario)
  end

  it 'testa se grupo tem dono' do
    grupo = Grupo.new
    grupo.save.should be_false
  end
  
  it 'testa se dono do grupo é o usuario' do
    @grupo.dono.should be_equal @usuario
  end

  it 'testa se o grupo tem varios usuarios' do
    @grupo.usuarios += [@usuario1, @usuario2]
    @grupo.usuarios[0].should be_equal @usuario1
    @grupo.usuarios[1].should be_equal @usuario2
  end

  it 'testa se o usuario é membro de varios grupos' do
    @grupo.usuarios << @usuario1
    @usuario1.grupos << @grupo1
    @grupo.usuarios[0].should be_equal @usuario1
    @usuario1.grupos[1].should be_equal @grupo1
  end

end
