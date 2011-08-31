class CreateListaEmails < ActiveRecord::Migration
  def self.up
    create_table :lista_emails do |t|
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :lista_emails
  end
end
