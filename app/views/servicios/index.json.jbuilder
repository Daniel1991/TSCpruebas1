json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :fecha, :pedidoN, :nombre, :identificacion, :email, :direccion, :telefono, :tipoServicio_id, :disponibilidad, :descripcion
  json.url servicio_url(servicio, format: :json)
end
