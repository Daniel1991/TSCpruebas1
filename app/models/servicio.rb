class Servicio < ActiveRecord::Base
  belongs_to :tipoServicio
  belongs_to :cliente
end
