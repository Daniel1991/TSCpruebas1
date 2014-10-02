class Proyecto < ActiveRecord::Base
  has_many :tareas
  validates :nombre, :presence => true
  
 
  
end
