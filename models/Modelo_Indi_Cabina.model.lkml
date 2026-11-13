connection: "@{conexion}"

include: "@{ruta_views}"
include: "@{ruta_lookml_dashboards}"

datagroup: Modelo_Cabina_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: Modelo_Cabina_default_datagroup

explore: fact_cabina_servicio_tiempo {
  label: "Explorar Modelo Cabina"
  description: "Información sobre tiempos y servicio en cabina"

}
