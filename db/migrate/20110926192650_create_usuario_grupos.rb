class CreateUsuarioGrupos < ActiveRecord::Migration
  def self.up
    create_table :usuario_grupos do |t|
      t.references :grupo
      t.references :usuario

      t.timestamps
    end
  end

  def self.down
    drop_table :usuario_grupos
  end
end
