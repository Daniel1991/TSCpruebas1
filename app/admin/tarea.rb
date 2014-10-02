ActiveAdmin.register Tarea do
permit_params :proyecto_id, :admin_user_id, :nombre, :estado, :fecha_limite
  
  scope :all, :default => true
  
  scope :due_this_week do |tareas|
    tareas.where('fecha_limite > ? and fecha_limite < ?', Time.now, 1.week.from_now)
  end
  scope :late do |tareas|
    tareas.where('fecha_limite < ?', Time.now)
  end
  scope :mine do |tareas|
    tareas.where(:admin_user_id => current_admin_user.id)
  end

  show do
    panel "Detalles de tarea" do
      attributes_table_for tarea do
        row("Estado") { status_tag (tarea.estado ? "Terminado" : "Pendiente"), (tarea.estado ? :ok : :error) }
        row("Nombre") { tarea.nombre }
        row("Proyecto") { link_to tarea.proyecto.nombre, admin_proyecto_path(tarea.proyecto) }
        row("Asignado a") { link_to tarea.admin_user.email, admin_admin_user_path(tarea.admin_user) }
        row("Fecha limite") { tarea.fecha_limite? ? l(tarea.fecha_limite, :format => :long) : '-' } 
    end
  end
 
  active_admin_comments
end
  
  sidebar "Otras tareas para este usuario", :only => :show do
    table_for current_admin_user.tareas.where(:proyecto_id => tarea.proyecto) do |t|
      t.column("Estado") { |tarea| status_tag (tarea.estado ? "Terminado" : "Pendiente"), (tarea.estado ? :ok : :error) }
      t.column("Nombre") { |tarea| link_to tarea.nombre, admin_tarea_path(tarea) }
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
