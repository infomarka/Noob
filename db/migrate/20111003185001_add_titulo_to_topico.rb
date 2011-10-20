class AddTituloToTopico < ActiveRecord::Migration
  def self.up
    add_column :topicos, :titulo, :string
  end

  def self.down
    remove_column :topicos, :titulo
  end
end
