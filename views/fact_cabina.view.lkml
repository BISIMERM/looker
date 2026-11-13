view: fact_cabina_servicio_tiempo {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.FACT_CABINA_SERVICIO_TIEMPO` ;;

  # ==========================================
  # Dimensiones (Textos y Fechas)
  # ==========================================

  dimension: periodo {
    label: "Periodo"
    type: string
    sql: ${TABLE}.PERIODO ;;
  }

  dimension: num_anio {
    label: "Año"
    type: number
    sql: ${TABLE}.NUM_ANIO ;;
    value_format: "0"
  }

  dimension: num_mes {
    type: number
    sql: ${TABLE}.NUM_MES ;;
    hidden: yes
  }

  dimension: desc_mes {
    label: "Mes"
    type: string
    sql:${TABLE}.DESC_MES ;;
    order_by_field: num_mes
    value_format: "0"
  }

  dimension_group: fch_carga_dato {
    label: "Fecha Carga Dato"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FCH_CARGA_DATO ;;
  }

  # ==========================================
  # Dimensiones Numéricas (Ocultas, base para métricas)
  # ==========================================

  dimension: num_seg_promedio_acd {
    type: number
    sql: ${TABLE}.NUM_SEG_PROMEDIO_ACD ;;
    hidden: yes
  }

  dimension: pct_nivel_servicio {
    type: number
    sql: ${TABLE}.PCT_NIVEL_SERVICIO ;;
    hidden: yes
  }

  dimension: num_llamadas_contestadas {
    type: number
    sql: ${TABLE}.NUM_LLAMADAS_CONTESTADAS ;;
    hidden: yes
  }

  # ==========================================
  # Métricas (Measures)
  # ==========================================

  measure: total_llamadas_contestadas {
    label: "Total Llamadas Contestadas"
    type: sum
    sql: ${num_llamadas_contestadas} ;;
    value_format: "#,##0"
  }

  measure: promedio_seg_acd {
    label: "Tiempo Promedio Llamada"
    type: number
    sql: AVG(${num_seg_promedio_acd}) / 86400.0 ;;
    value_format: "h:mm:ss"
  }

  measure: promedio_nivel_servicio {
    label: "Nivel Servicio"
    type: average
    sql: ${pct_nivel_servicio} / 100.0 ;;
    value_format_name: percent_0
  }
}
