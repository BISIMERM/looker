connection: "@{conexion}"
include: "@{ruta_views}"
include: "@{ruta_lookml_dashboards}"
# Define the database connection to be used for this model.
#connection: "bigquery-operaciones"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: Modelo_LIBCONDVEH_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: Modelo_LIBCONDVEH_default_datagroup

explore: fact_libcondveh {
  label: "Explorar Modelo Liberación Vehículo"
  description: "Información sobre liberación de vehículos y conductores"

  join: dim_libcondveh {
    sql_on: ${fact_libcondveh.sk_reporte} = ${dim_libcondveh.sk_reporte} ;;
    relationship: one_to_one
    type: left_outer
  }
  join: dim_reporte {
    sql_on: ${fact_libcondveh.sk_reporte} = ${dim_reporte.sk_reporte} ;;
    relationship: one_to_one
    type: left_outer
  }
  join: dim_estructura_comercial {
    sql_on: ${fact_libcondveh.sk_reporte} = ${dim_estructura_comercial.sk_reporte} ;;
    relationship: one_to_one
    type: left_outer
  }
  join: dim_estructura_atencion {
    sql_on: ${fact_libcondveh.sk_reporte} = ${dim_estructura_atencion.sk_reporte} ;;
    relationship: one_to_one
    type: left_outer
  }
  join: dim_fecha_reporte {
    from: dim_tiempo
    sql_on: ${fact_libcondveh.sk_fecha_reporte} = ${dim_fecha_reporte.sk_fecha} ;;
    relationship: one_to_one
    type: left_outer
  }
  join: dim_tiempo_livvech {
    from: dim_tiempo
    sql_on: ${fact_libcondveh.sk_fecha_liberacion_vehiculo} = ${dim_tiempo_livvech.sk_fecha} ;;
    relationship: one_to_one
    type: left_outer
  }
  join: dim_tiempo_livcond {
    from: dim_tiempo
    sql_on: ${fact_libcondveh.sk_fecha_liberacion_conductor} = ${dim_tiempo_livcond.sk_fecha} ;;
    relationship: one_to_one
    type: left_outer
  }
  join: dim_tiempo_asiabo {
    from: dim_tiempo
    sql_on: ${fact_libcondveh.sk_fecha_asignacion_abogado} = ${dim_tiempo_asiabo.sk_fecha} ;;
    relationship: one_to_one
    type: left_outer
  }
}
