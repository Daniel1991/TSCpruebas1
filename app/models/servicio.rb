class Servicio < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :tipoServicio

      # validar formato de un email
validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
message: 'Formato no valido' }

# Validar que los atributos sean obligatorios
validates :nombre, :presence => true 
validates :identificacion, :presence => true
validates :email, :presence => true
validates :direccion, :presence => true
validates :descripcion, :presence => true
validates :tipoServicio_id, :presence => true
validates :telefono, :presence => true


# valida la longitud de un campo, tanto la longitud minima como la maxima
validates :identificacion, length: { minimum: 5, maximum: 13 }
validates :nombre, length: { minimum: 5, maximum: 50 }

# Valida si un atributo es numerico
validates :telefono, numericality: true
end
