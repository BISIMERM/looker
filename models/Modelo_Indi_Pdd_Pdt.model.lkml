connection: "@{conexion}"

include: "@{ruta_views}"
include: "@{ruta_lookml_dashboards}"

# Datagroup para definir la política de caché del Explore
datagroup: Modelo_PDD_PDT_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: Modelo_PDD_PDT_default_datagroup

explore: fact_pdd_pdt {
  label: "Explorar Modelo PDD y PDT"
  description: "Análisis y métricas transaccionales de PDD y PDT"

  join: dim_pdd_pdt {
    sql_on: ${fact_pdd_pdt.sk_id_cruce} = ${dim_pdd_pdt.sk_id_cruce} ;;
    relationship: one_to_one
    type: left_outer
  }

  join: dim_reporte {
    sql_on: ${fact_pdd_pdt.sk_reporte} = ${dim_reporte.sk_reporte} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: dim_estructura_comercial {
    sql_on: ${fact_pdd_pdt.sk_reporte} = ${dim_estructura_comercial.sk_reporte} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: dim_estructura_atencion {
    sql_on: ${fact_pdd_pdt.sk_reporte} = ${dim_estructura_atencion.sk_reporte} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: dim_fecha_pago {
    from: dim_tiempo
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_pdd_pdt.sk_fecha_pago} = ${dim_fecha_pago.sk_fecha} ;;
  }

  join: dim_fecha_pri_tra {
    from: dim_tiempo
    type: left_outer
    relationship: many_to_one
    sql_on:${fact_pdd_pdt.sk_fec_pri_tra} = ${dim_fecha_pri_tra.sk_fecha} ;;
  }
}
