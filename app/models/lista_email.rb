class ListaEmail < ActiveRecord::Base
  def valida_email
    (self.email =~ /\w+@\w+\.\w+/) != nil
  end
end
