json.array!(@informetecnicos) do |informetecnico|
  json.extract! informetecnico, :id, :fechaingreso, :hora, :cedulanit, :nombreempresa, :telefono, :direccion, :nombretecnico, :garantia, :servicio, :facturable, :valor, :dispositivo, :marcamodelo, :serialid, :descripcion, :fechasalida, :horasalida, :nombreusuario, :problema_id
  json.url informetecnico_url(informetecnico, format: :json)
end
