view: fact_gruas_colision {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.FACT_GRUAS_COLISION` ;;


  # ==========================================
  # 1. LLAVES SUBROGADAS (Ocultas para Joins)
  # ==========================================

  dimension: sk_servicio {
    type: string
    hidden: yes
    sql: TO_HEX(${TABLE}.SK_SERVICIO) ;;
  }

  dimension: sk_reporte {
    type: string
    hidden: yes
    sql: TO_HEX(${TABLE}.SK_REPORTE) ;;
  }

  dimension: sk_fec_rep {
    type: string
    hidden: yes
    sql: TO_HEX(${TABLE}.SK_FEC_REP) ;;
  }

  dimension: sk_fec_alta {
    type: string
    hidden: yes
    sql: TO_HEX(${TABLE}.SK_FEC_ALTA) ;;
  }

  dimension: sk_fec_asigna {
    type: string
    hidden: yes
    sql: TO_HEX(${TABLE}.SK_FEC_ASIGNA) ;;
  }

  dimension: sk_fec_arribo {
    type: string
    hidden: yes
    sql: TO_HEX(${TABLE}.SK_FEC_ARRIBO) ;;
  }

  # ==========================================
  # 2. DIMENSIONES REGULARES
  # ==========================================

  dimension: id_servicio {
    type: number
    label: "ID Servicio"
    sql: ${TABLE}.ID_SERVICIO ;;
  }

  dimension: id_involucrado {
    type: number
    label: "ID Involucrado"
    sql: ${TABLE}.ID_INVOLUCRADO ;;
  }

  dimension: reporte_sise {
    type: string
    label: "Reporte SISE"
    sql: ${TABLE}.REPORTE_SISE ;;
  }

  dimension: localizacion {
    type: string
    label: "Localización"
    sql: ${TABLE}.LOCALIZACION ;;
  }

  dimension: estatus_servicio {
    type: string
    label: "Estatus Servicio"
    sql: ${TABLE}.ESTATUS_SERVICIO ;;
  }

  # ==========================================
  # 3. FECHAS (Dimension Groups)
  # ==========================================

  dimension_group: fec_rep {
    label: "Fecha Reporte"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FEC_REP ;;
  }

  dimension_group: alta_serv {
    label: "Alta Servicio"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.ALTA_SERV ;;
  }

  dimension_group: fec_asigna {
    label: "Fecha Asignación"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FEC_ASIGNA ;;
  }

  dimension_group: fec_arribo {
    label: "Fecha Arribo (DATETIME)"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FEC_ARRIBO ;;
  }

  dimension_group: fec_termino {
    label: "Fecha Término"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FEC_TERMINO ;;
  }

  dimension_group: fch_arribo {
    label: "Fecha Arribo (DATE)"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    datatype: date
    sql: ${TABLE}.FCH_ARRIBO ;;
  }

  dimension_group: fch_carga_dato {
    label: "Fecha Carga Dato"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: timestamp
    sql: ${TABLE}.FCH_CARGA_DATO ;;
    hidden: yes
  }

  # ==========================================
  # 4. DIMENSIONES NUMÉRICAS BASE (Hechos)
  # ==========================================

  dimension: tiempo_arribo {
    type: number
    hidden: yes
    sql: ${TABLE}.TIEMPO_ARRIBO ;;
  }

  dimension: num_minutos_arribo {
    type: number
    hidden: yes
    sql: ${TABLE}.NUM_MINUTOS_ARRIBO ;;
  }

  dimension: num_dias_asignacion {
    type: number
    hidden: yes
    sql: ${TABLE}.NUM_DIAS_ASIGNACION ;;
  }

  dimension: flg_arr_000052 {
    type: number
    hidden: yes
    sql: ${TABLE}.FLG_ARR_000052 ;;
  }

  dimension: flg_arr_053072 {
    type: number
    hidden: yes
    sql: ${TABLE}.FLG_ARR_053072 ;;
  }

  dimension: flg_arr_073105 {
    type: number
    hidden: yes
    sql: ${TABLE}.FLG_ARR_073105 ;;
  }

  dimension: flg_arr_105999 {
    type: number
    hidden: yes
    sql: ${TABLE}.FLG_ARR_105999 ;;
  }

  dimension: bit_gc {
    type: number
    hidden: yes
    sql: ${TABLE}.BIT_GC ;;
  }

  # ==========================================
  # 5. MÉTRICAS (Medidas para Tableros)
  # ==========================================

  measure: count {
    type: count
    label: "Total de Servicios (Grúas)"
  }

  # --- Tiempos y Promedios ---

  measure: promedio_tiempo_arribo {
    type: average
    label: "Promedio Tiempo Arribo"
    sql: ${tiempo_arribo} ;;
    value_format_name: decimal_2
  }

  measure: promedio_minutos_arribo {
    type: average
    label: "Promedio Minutos Arribo"
    sql: ${num_minutos_arribo} ;;
    value_format_name: decimal_2
  }

  measure: sum_minutos_arribo {
    type: sum
    label: "Suma Minutos Arribo"
    sql: ${num_minutos_arribo} ;;
  }

  measure: sum_tiempo_arribo {
    type: sum
    label: "Suma Tiempo Arribo"
    sql: ${tiempo_arribo} ;;
  }

  measure: promedio_dias_asignacion {
    type: average
    label: "Promedio Días Asignación"
    sql: ${num_dias_asignacion} ;;
    value_format_name: decimal_2
  }

  # --- Banderas (Flags) ---

  measure: total_arr_00_a_52 {
    type: sum
    label: "Total Arribos 00-52"
    sql: ${flg_arr_000052} ;;
  }

  measure: total_arr_53_a_72 {
    type: sum
    label: "Total Arribos 53-72"
    sql: ${flg_arr_053072} ;;
  }

  measure: total_arr_73_a_105 {
    type: sum
    label: "Total Arribos 73-105"
    sql: ${flg_arr_073105} ;;
  }

  measure: total_arr_105_plus {
    type: sum
    label: "Total Arribos >105"
    sql: ${flg_arr_105999} ;;
  }

  measure: total_bit_gc {
    type: sum
    label: "Total BIT GC"
    sql: ${bit_gc} ;;
  }

# ==========================================
# 6. MÉTRICAS PARA TABLERO
# ==========================================

  #measure: tiempo_promedio_arribo_formato {
  #label: "Tiempo de Arribo Local"
  #description: "Equivalente a Sum(Tiempo)/Sum(Reportes) formateado en horas y minutos"
  #type: number
  #sql: SAFE_DIVIDE(${promedio_minutos_arribo}, (24*60)) ;;
  #value_format: "[h]:mm:ss"
  #}

  measure: sum_num_arribo {
    label: "Tiempo de Arribo Local"
    description: "Equivalente a Sum(Tiempo)/Sum(Reportes) formateado en horas y minutos"
    type: number
    sql: SAFE_DIVIDE(${sum_minutos_arribo}, ${count}) ;;
    value_format_name: decimal_2
  }

  measure: tiempo_arribo_formato {
    label: "Tiempo de Arribo Local (tiempo_arribo)"
    description: "Equivalente a Sum(Tiempo)/Sum(Reportes) formateado en horas y minutos"
    type: number
    sql: SAFE_DIVIDE(${sum_tiempo_arribo}, ${count}) ;;
    value_format_name: decimal_2
  }

  measure: pct_cumplimiento_0_52 {
    label: "% Cumpl"
    description: "Porcentaje de grúas que arribaron entre 0 y 52 minutos"
    type: number
    sql: SAFE_DIVIDE(${total_arr_00_a_52}, ${count}) ;;
    value_format_name: percent_0
  }

  measure: pct_dentro_de_meta {
    label: "% dentro de meta"
    description: "Porcentaje de grúas que arribaron entre 0 y 52 minutos"
    type: number
    sql: SAFE_DIVIDE(${total_arr_00_a_52}, ${count}) ;;
    value_format_name: percent_0
  }

  # ==========================================
  # 7. TABLA DE RANGOS (Volúmenes y Porcentajes)
  # ==========================================

  # --- Rango 1: 0 a 52 Minutos ---
  measure: vol_0_a_52_min {
    label: "= 0 < 53 Min"
    description: "Volumen de grúas de 0 a 52 min"
    type: sum
    sql: ${flg_arr_000052} ;;
    value_format: "#,##0"
  }

  measure: pct_0_a_52_min {
    label: "% (0 a 52 min)"
    type: number
    sql: SAFE_DIVIDE(${vol_0_a_52_min}, ${count}) ;;
    value_format_name: percent_0
  }

  # --- Rango 2: 53 a 75 Minutos ---
  measure: vol_53_a_75_min {
    label: "De 53 min a 75 min"
    description: "Volumen de grúas de 53 a 75 min"
    type: sum
    sql: ${flg_arr_053072} ;; # Nota: Usa el flag 053072 de tu BD
    value_format: "#,##0"
  }

  measure: pct_53_a_75_min {
    label: "% (53 a 75 min)"
    type: number
    sql: SAFE_DIVIDE(${vol_53_a_75_min}, ${count}) ;;
    value_format_name: percent_0
  }

  # --- Rango 3: 75 a 105 Minutos ---
  measure: vol_75_a_105_min {
    label: "De 75 min a 105 min"
    description: "Volumen de grúas de 75 a 105 min"
    type: sum
    sql: ${flg_arr_073105} ;; # Nota: Usa el flag 073105 de tu BD
    value_format: "#,##0"
  }

  measure: pct_75_a_105_min {
    label: "% (75 a 105 min)"
    type: number
    sql: SAFE_DIVIDE(${vol_75_a_105_min}, ${count}) ;;
    value_format_name: percent_0
  }

  # --- Rango 4: Mayor a 105 Minutos ---
  measure: vol_mayor_105_min {
    label: "Mayor a 105 min"
    description: "Volumen de grúas mayor a 105 min"
    type: sum
    sql: ${flg_arr_105999} ;;
    value_format: "#,##0"
  }

  measure: pct_mayor_105_min {
    label: "% (Mayor a 105 min)"
    type: number
    sql: SAFE_DIVIDE(${vol_mayor_105_min}, ${count}) ;;
    value_format_name: percent_0
  }
}
