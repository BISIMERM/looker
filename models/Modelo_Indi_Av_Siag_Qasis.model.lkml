connection: "@{conexion}"
include: "@{ruta_views}"
include: "@{ruta_lookml_dashboards}"
#
datagroup: Modelo_AV_SIAG_OASIS_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}
persist_with: Modelo_AV_SIAG_OASIS_default_datagroup
explore: fact_av_siag_qasis {
  label: "Explorar Modelo AV SIAG QASIS"
  description: "Información sobre servicios AV SIAG y QASISTENCIA"

  join: dim_av_siag_qasis {
    sql_on: ${fact_av_siag_qasis.sk_id_servicio} = ${dim_av_siag_qasis.sk_id_servicio} ;;
        relationship: one_to_one
        type: inner
      }

  # join: dim_reporte {
    #   sql_on: ${fact_av_siag_qasis.sk_reporte} = ${dim_reporte.sk_reporte} ;;
    #   relationship: many_to_one
    #   type: inner
    # }

  # join: dim_estructura_comercial {
    #   sql_on: ${fact_av_siag_qasis.sk_reporte} = ${dim_estructura_comercial.sk_reporte} ;;
    #   relationship: many_to_one
    #   type: inner
    # }

  # join: dim_estructura_atencion {
    #   sql_on: ${fact_av_siag_qasis.sk_reporte} = ${dim_estructura_atencion.sk_reporte} ;;
    #   relationship: many_to_one
    #   type: inner
    # }

  # join: dim_fecha_reporte {
    #   from: dim_tiempo
    #   sql_on: ${fact_av_siag_qasis.sk_fecha_reporte} = ${dim_fecha_reporte.sk_fecha} ;;
    #   relationship: many_to_one
    #   type: inner
    # }

  join: dim_fecha_arribo {
    from: dim_tiempo
    sql_on: ${fact_av_siag_qasis.sk_fecha_arribo} = ${dim_fecha_arribo.sk_fecha} ;;
    relationship: many_to_one
    type: inner
  }

  join: dim_fecha_alta {
      from: dim_tiempo
      sql_on: ${fact_av_siag_qasis.sk_fecha_alta} = ${dim_fecha_alta.sk_fecha} ;;
      relationship: many_to_one
      type: inner
    }

  # join: dim_fecha_asignacion {

  #   from: dim_tiempo

  #   sql_on: ${fact_av_siag_qasis.sk_fecha_asignacion} = ${dim_fecha_asignacion.sk_fecha} ;;

  #   relationship: many_to_one

  #   type: inner

  # }
  }
