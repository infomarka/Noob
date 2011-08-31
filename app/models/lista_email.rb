class ListaEmail < ActiveRecord::Base
  def valida_email
    self.email.include? '@'
  end
end
