class Topico < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :grupo
  validates :grupo , :presence => true
end
