class AddUsuariosAndGrupos < ActiveRecord::Migration
  def self.up
    create_table :grupos_usuarios do |t|
      t.references :grupo, :usuario
    end
  end

  def self.down
    drop_table :grupos_usuarios
  end
end
