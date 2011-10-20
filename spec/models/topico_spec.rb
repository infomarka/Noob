require 'spec_helper'

describe Topico do

  before do
    @user = Usuario.create(:email => "loL@lolmail.com", :password => "123456")
    @grupo = Grupo.create(:nome => "LOLgrupo", :descricao => "lol", :dono => @user)
  end

  it 'topico sem grupo da erro' do
    topico = Topico.new
    topico.save.should be_false
  end

  it 'testa se o topico pode ser criado sem titulo' do
    topico = Topico.new(:grupo => @grupo)
    topico.save.should be_false
  end

  it 'testa se o topico pode ser criado sem dono' do
    topico = Topico.new(:grupo => @grupo, :titulo => 'Primeiro Topico')
    topico.save.should be_false
  end

  it 'testa se o post foi criado com topico' do
    topico = Topico.new(:grupo => @grupo, :titulo => 'Primeiro Topico', :usuario => @user)
    topico.posts.build :conteudo => 'bla'
    topico.save.should be_false
  end

end
