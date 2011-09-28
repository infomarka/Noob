class CreateGrupos < ActiveRecord::Migration
  def self.up
    create_table :grupos do |t|
      t.string :nome
      t.string :descricao
      t.integer :dono_id
      t.timestamps
    end
  end

  def self.down
    drop_table :grupos
  end
end
