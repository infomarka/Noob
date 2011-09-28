require 'spec_helper'

describe Topico do

  it 'topico sem grupo da erro' do
    topico = Topico.new
    topico.save.should be_false
  end

  it 'cria um grupo com varios topicos' do
    user = Usuario.create(:email => "loL@lolmail.com", :password => "123456")
    grupo = Grupo.create(:nome => "LOLgrupo", :descricao => "lol", :dono => user)
    topico1 = Topico.create(:grupo => grupo)
    topico2 = Topico.create(:grupo => grupo)
    topico1.grupo.should be_equal grupo
    grupo.topicos[1].id.should be_equal topico2.id
  end

  it '' do

  end

end
