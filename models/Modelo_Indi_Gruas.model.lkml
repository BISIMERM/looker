connection: "@{conexion}"
include: "@{ruta_views}"
include: "@{ruta_lookml_dashboards}"

# Definición de caché para el nuevo modelo
datagroup: Modelo_Gruas_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: Modelo_Gruas_default_datagroup

explore: fact_gruas_colision {
  label: "Explorar Modelo Grúas"
  description: "Información sobre servicios de grúas y colisiones"

  join: dim_grua_colision {
    sql_on: ${fact_gruas_colision.sk_servicio} = ${dim_grua_colision.sk_servicio} ;;
    relationship: many_to_one
    type: left_outer
  }

  # join: dim_fecha_grua {
  #   sql_on: ${fact_gruas_colision.sk_fec_arribo} = ${dim_fecha_grua.sk_fecha} ;;
  #   relationship: many_to_one
  #   type: left_outer
  # }

  join: dim_fecha_arribo {
    from: dim_fecha_grua
    sql_on: ${fact_gruas_colision.sk_fec_arribo} = ${dim_fecha_arribo.sk_fecha} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: dim_estructura_atencion {
    sql_on: ${fact_gruas_colision.sk_reporte} = ${dim_estructura_atencion.sk_reporte} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: dim_estructura_comercial {
    sql_on: ${fact_gruas_colision.sk_reporte} = ${dim_estructura_comercial.sk_reporte} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: dim_reporte {
    sql_on: ${fact_gruas_colision.sk_reporte} = ${dim_reporte.sk_reporte} ;;
    relationship: many_to_one
    type: left_outer
  }
}
