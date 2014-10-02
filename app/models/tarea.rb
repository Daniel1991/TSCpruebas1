class Tarea < ActiveRecord::Base
  belongs_to :proyecto
  belongs_to :admin_user
  
  validates :nombre, :proyecto_id, :admin_user_id, :presence => true
  validates :estado, :inclusion => { :in => [true, false] }
end
