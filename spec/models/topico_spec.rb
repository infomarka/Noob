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

  it 'cria um grupo com varios topicos' do
    topico1 = Topico.create(:grupo => @grupo)
    topico2 = Topico.create(:grupo => @grupo)
    topico1.grupo.should be_equal @grupo
    @grupo.topicos[1].id.should be_equal topico2.id
  end

  it 'testa se topico eh do grupo' do
    topico = Topico.create(:grupo => @grupo)
    @grupo.topicos[0].id.should be_equal topico.id
  end

end
