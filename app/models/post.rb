class Post < ActiveRecord::Base
  belongs_to :topico
  belongs_to :usuario

  validates :topico, :presence => true
  validates :usuario, :presence => true

end
