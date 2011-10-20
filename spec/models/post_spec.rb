require 'spec_helper'

describe Post do

  before do
    @user = Usuario.create(:email => "loL@lolmail.com", :password => "123456")
    @topico = Topico.create(:usuario => @user, :grupo => @grupo, :descricao => "qweewqrwetr")
  end

  it "testa se post eh criado com usuario nulo" do
    post = Post.new
    post.save.should be_false
  end

  it "testa se post pertence a usuario" do
    post = Post.create(:topico => @topico, :usuario => @user)
    post.usuario.should be_equal @user
  end

  it 'testa se um post pertence a um topico' do
    post = Post.create(:topico => @topico, :usuario => @user)
    post.topico.id.should be_equal @topico.id
  end

end
