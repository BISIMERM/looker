connection: "@{conexion}"
include: "@{ruta_views}"
include: "@{ruta_lookml_dashboards}"

datagroup: Modelo_Encuestas_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: Modelo_Encuestas_default_datagroup

explore: fact_dd {
  label: "Explorar Modelo DD"
  description: "Información sobre Decretos y Trámites (DD)"

  # Corregido: Se ajusta a sk_llave en lugar de sk_tramite
  join: dim_dd {
    sql_on: ${fact_dd.sk_llave} = ${dim_dd.sk_llave} ;;
    relationship: many_to_one
    type: left_outer
  }

  # ==========================================
  # JOINS DE TIEMPO
  # ==========================================

  # Fecha de Reporte (Tiempo base)
  join: dim_tiempo {
    sql_on: ${fact_dd.sk_fec_rep} = ${dim_tiempo.sk_fecha} ;;
    relationship: many_to_one
    type: left_outer
  }

  # Fecha de Pago
  join: dim_fecha_pago {
    from: dim_tiempo
    sql_on: ${fact_dd.sk_fec_pago} = ${dim_fecha_pago.sk_fecha} ;;
    relationship: many_to_one
    type: left_outer
  }

  # Fecha de Ocurrencia
  join: dim_fecha_ocu {
    from: dim_tiempo
    sql_on: ${fact_dd.sk_fec_ocu} = ${dim_fecha_ocu.sk_fecha} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: dim_estructura_atencion {
    sql_on: ${fact_dd.sk_reporte} = ${dim_estructura_atencion.sk_reporte} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: dim_estructura_comercial {
    sql_on: ${fact_dd.sk_reporte} = ${dim_estructura_comercial.sk_reporte} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: dim_reporte {
    sql_on: ${fact_dd.sk_reporte} = ${dim_reporte.sk_reporte} ;;
    relationship: many_to_one
    type: left_outer
  }
}
