ActiveAdmin.register Proyecto do
  permit_params :nombre
  
  index do
    column :nombre do |proyecto|
      link_to proyecto.nombre, admin_proyecto_path(proyecto)
  end
 
  actions
end
 
# Filter only by title
  filter :nombre
  
  show :nombre => :nombre do
    panel "Tareas" do
      table_for proyecto.tareas do |t|
        t.column("Estado") { |tarea| status_tag (tarea.estado ? "Terminado" : "Pendiente"), (tarea.estado ? :ok : :error) }
        t.column("Nombre") { |tarea| link_to tarea.nombre, admin_tarea_path(tarea) }
        t.column("Asignado a") { |tarea| tarea.admin_user.email }
        t.column("Fecha limite") { |tarea| tarea.fecha_limite? ? l(tarea.fecha_limite, :format => :long) : '-' }
    end
  end
end
  

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
