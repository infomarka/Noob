#encoding: UTF-8
require 'spec_helper'

describe Grupo do

  before do
    @user = Usuario.create(:email => "loL@lolmail.com", :password => "123456")
    @user1 = Usuario.create(:email => "loL1@lolmail.com", :password => "123456")
    @user2 = Usuario.create(:email => "loL2@lolmail.com", :password => "123456")
    @group = Grupo.create(:nome => "LOLgroup", :descricao => "lol", :dono => @user)
    @group1 = Grupo.create(:nome => "NOOBgroup", :descricao => "Noob", :dono => @user)
  end
  
  it 'testa se dono do grupo é o usuario' do
    @group.dono.should be_equal @user
  end

  it 'testa se o grupo tem varios usuarios' do
    @group.usuarios += [@user1, @user2]
    @group.usuarios[0].should be_equal @user1
    @group.usuarios[1].should be_equal @user2
  end

  it 'testa se o usuario é membro de varios grupos' do
    @group.usuarios << @user1
    @user1.grupos << @group1
    @group.usuarios[0].should be_equal @user1
    @user1.grupos[1].should be_equal @group1
  end

end
