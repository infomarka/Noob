class Grupo < ActiveRecord::Base
  has_many :usuario_grupos
  has_many :topicos
  has_many :usuarios, :through => :usuario_grupos
  belongs_to :dono, :class_name => 'Usuario'
  validates :dono, :presence => true
end
