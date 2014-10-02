ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end
  end 
    
    content :title => proc{ I18n.t("active_admin.dashboard") } do
      
      columns do  
        
          column do
            panel "Tareas para esta semana" do
              table_for current_admin_user.tareas.where('fecha_limite > ? and fecha_limite < ?', Time.now, 1.week.from_now) do |t|
                t.column("Estado") { |tarea| status_tag (tarea.estado ? "Terminado" : "Pendiente"), (tarea.estado ? :ok : :error) }
                t.column("Nombre") { |tarea| link_to tarea.nombre, admin_tarea_path(tarea) }
                t.column("Asignado a") { |tarea| tarea.admin_user.email }
                t.column("Fecha limite") { |tarea| tarea.fecha_limite? ? l(tarea.fecha_limite, :format => :long) : '-' }
              end
            end
        end

        column do
          panel "Tareas que se pasaron de la fecha limite" do
            table_for current_admin_user.tareas.where('fecha_limite < ?', Time.now) do |t|
              t.column("Estado") { |tarea| status_tag (tarea.estado ? "Terminado" : "Pendiente"), (tarea.estado ? :ok : :error) }
              t.column("Nombre") { |tarea| link_to tarea.nombre, admin_tarea_path(tarea) }
              t.column("Asignado a") { |tarea| tarea.admin_user.email }
              t.column("Fecha limite") { |tarea| tarea.fecha_limite? ? l(tarea.fecha_limite, :format => :long) : '-' }
            end
          end
        end
     end
  end
end
