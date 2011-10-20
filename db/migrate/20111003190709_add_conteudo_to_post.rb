class AddConteudoToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :conteudo, :string
  end

  def self.down
    remove_column :posts, :conteudo
  end
end
