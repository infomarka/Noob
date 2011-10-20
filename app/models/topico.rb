class Topico < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :grupo

  has_many :posts
  
  validates :grupo , :presence => true
  validates :titulo, :presence => true
  validates :usuario, :presence => true

  validates :posts, :presence => true

end
