class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  #  has_and_belongs_to_many :grupos
  has_many :usuario_grupos
  has_many :grupos, :through => :usuario_grupos
  has_many :grupos_gerenciados, :class_name => 'Grupo', :foreign_key => 'dono_id'
end
