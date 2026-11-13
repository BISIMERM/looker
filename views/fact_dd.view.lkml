view: fact_dd {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.FACT_DD` ;;

  # ==========================================
  # 1. LLAVES SUBROGADAS (Ocultas para Joins)
  # ==========================================

  # Corregido: SK_LLAVE existe en lugar de SK_TRAMITE
  dimension: sk_llave {
    type: string
    sql: TO_HEX(${TABLE}.SK_LLAVE) ;;
    hidden: yes
  }

  dimension: sk_reporte {
    type: string
    sql: TO_HEX(${TABLE}.SK_REPORTE) ;;
    hidden: yes
  }

  dimension: sk_fec_pago {
    type: string
    sql: TO_HEX(${TABLE}.SK_FEC_PAGO) ;;
    hidden: yes
  }

  dimension: sk_fec_ocu {
    type: string
    sql: TO_HEX(${TABLE}.SK_FEC_OCU) ;;
    hidden: yes
  }

  dimension: sk_fec_rep {
    type: string
    sql: TO_HEX(${TABLE}.SK_FEC_REP) ;;
    hidden: yes
  }

  dimension: sk_fec_alta {
    type: string
    sql: TO_HEX(${TABLE}.SK_FEC_ALTA) ;;
    hidden: yes
  }

  dimension: sk_fec_ent {
    type: string
    sql: TO_HEX(${TABLE}.SK_FEC_ENT) ;;
    hidden: yes
  }

  dimension: sk_fec_cap {
    type: string
    sql: TO_HEX(${TABLE}.SK_FEC_CAP) ;;
    hidden: yes
  }

  # ==========================================
  # 2. DIMENSIONES REGULARES (Textos)
  # ==========================================

  dimension: llave {
    type: string
    label: "Llave"
    sql: ${TABLE}.LLAVE ;;
  }

  dimension: classptrobo {
    type: string
    label: "Clase PT Robo"
    sql: ${TABLE}.CLASSPTROBO ;;
  }

  # ==========================================
  # 3. DIMENSIONES NUMÉRICAS BASE
  # ==========================================

  dimension: cant_tram {
    type: number
    sql: ${TABLE}.CantTram ;;
  }

  dimension: dias_decreto {
    type: number
    sql: ${TABLE}.DIASDECRETO ;;
  }

  dimension: tipo_decreto {
    type: number
    sql: ${TABLE}.TIPODECRETO ;;
  }

  dimension: tipo_decreto_2 {
    type: number
    sql: ${TABLE}.TIPODECRETO2 ;;
  }

  # Corregido: La columna real en BQ es DIASDEPAGO
  dimension: dias_de_tramite {
    type: number
    sql: ${TABLE}.DIASDEPAGO ;;
  }

  dimension: flg_00a03_dias {
    type: number
    sql: ${TABLE}.FLG_00A03_DIAS ;;
  }

  dimension: flg_03a04_dias {
    type: number
    sql: ${TABLE}.FLG_03A04_DIAS ;;
  }

  dimension: flg_05a99_dias {
    type: number
    sql: ${TABLE}.FLG_05A99_DIAS ;;
  }

  dimension: flg_cumplimiento {
    type: number
    sql: ${TABLE}.FLG_CUMPLIMIENTO ;;
  }

  dimension: tiempo_integral_pago {
    type: number
    sql: ${TABLE}.TiempoIntegralPago ;;
  }

  # ==========================================
  # 4. MÉTRICAS (Sumatorias)
  # ==========================================

  measure: count {
    type: count
    label: "Total de Registros"
  }

  measure: total_cant_tram {
    type: sum
    label: "Total Cantidad Trámite"
    sql: ${cant_tram} ;;
  }

  measure: total_dias_decreto {
    type: sum
    label: "Total Días Decreto"
    sql: ${dias_decreto} ;;
  }

  measure: total_dias_de_tramite {
    type: sum
    label: "Total Días de Trámite"
    sql: ${dias_de_tramite} ;;
  }

  measure: total_tiempo_integral_pago {
    type: sum
    label: "Total Tiempo Integral Pago"
    sql: ${tiempo_integral_pago} ;;
  }

  # --- Banderas (Flags) ---

  measure: total_flg_00a03 {
    type: sum
    label: "Total FLG 00 a 03 Días"
    sql: ${flg_00a03_dias} ;;
  }

  measure: total_flg_03a04 {
    type: sum
    label: "Total FLG 03 a 04 Días"
    sql: ${flg_03a04_dias} ;;
  }

  measure: total_flg_05a99 {
    type: sum
    label: "Total FLG 05 a 99 Días"
    sql: ${flg_05a99_dias} ;;
  }

  measure: total_cumplimiento {
    type: sum
    label: "Total FLG Cumplimiento"
    sql: ${flg_cumplimiento} ;;
  }

  # ==========================================
  # 5. MÉTRICAS PARA TABLEROS
  # ==========================================

  measure: promedio_dias_pago {
    label: "Días de pago Daño Material"
    description: "Promedio de días de pago"
    type: number
    sql: SAFE_DIVIDE(${total_dias_de_tramite}, ${count}) ;;
    value_format_name: decimal_1
  }

  measure: pct_rango_dentro_meta {
    label: "Días de pago Daño Material Rango dentro de Meta"
    description: "Porcentaje de trámites pagados entre 0 y 3 días"
    type: number
    sql: SAFE_DIVIDE(${total_flg_00a03}, ${count}) ;;
    value_format_name: percent_0
  }

  measure: pts_pagadas {
    label: "Pts. Pagadas"
    description: "Total de registros (oculta los ceros en meses futuros para mostrar guiones)"
    type: number
    sql: NULLIF(${count}, 0) ;;
    value_format: "#,##0"
  }

  measure: rango_dentro_meta {
    label: "Rango dentro de Meta"
    description: "Promedio de días de pago (oculta ceros en meses futuros)"
    type: number
    sql: SAFE_DIVIDE(${total_dias_de_tramite}, NULLIF(${count}, 0)) ;;
    value_format_name: decimal_1
  }

  measure: promedio_dias_decreto {
    label: "Días desde Decreto Promedio"
    description: "Promedio de días de decreto (oculta ceros en meses futuros)"
    type: number
    sql: SAFE_DIVIDE(${total_dias_decreto}, NULLIF(${count}, 0)) ;;
    value_format_name: decimal_1
  }

  # ==========================================
  # DIMENSIÓN Y MÉTRICA DE REVISIÓN
  # ==========================================

  # Corregido: Apunta a DIASDEPAGO
  dimension: dias_revision {
    type: number
    sql: ${TABLE}.DIASDEPAGO ;;
    hidden: yes
  }

  measure: total_dias_revision {
    type: sum
    sql: ${dias_revision} ;;
    hidden: yes
  }

  measure: promedio_dias_revision {
    label: "Días Revisión Promedio"
    description: "Promedio de días de revisión (oculta ceros en meses futuros)"
    type: number
    sql: SAFE_DIVIDE(${total_dias_revision}, NULLIF(${count}, 0)) ;;
    value_format_name: decimal_1
  }

  # ==========================================
  # DIMENSIÓN Y MÉTRICA DE TIEMPO INTEGRAL
  # ==========================================

  dimension: tiempo_integral {
    type: number
    sql: ${TABLE}.TiempoIntegralPago ;;
    hidden: yes
  }

  measure: total_tiempo_integral {
    type: sum
    sql: ${tiempo_integral} ;;
    hidden: yes
  }

  measure: promedio_tiempo_integral {
    label: "Días Tiempo Integral Promedio"
    description: "Promedio de días de tiempo integral (oculta ceros en meses futuros)"
    type: number
    sql: SAFE_DIVIDE(${total_tiempo_integral}, NULLIF(${count}, 0)) ;;
    value_format_name: decimal_1
  }

  # ==========================================
  # 6. TABLA DE RANGOS (Volúmenes y Porcentajes)
  # ==========================================

  # --- Rango 1: 0 a 3 Días ---
  measure: vol_entre_0_3_dias {
    label: "Entre 0-3 días"
    description: "Volumen de trámites de 0 a 3 días"
    type: number
    sql: NULLIF(${total_flg_00a03}, 0) ;;
    value_format: "#,##0"
  }

  measure: pct_entre_0_3_dias {
    label: "% (0-3 días)"
    type: number
    sql: SAFE_DIVIDE(${vol_entre_0_3_dias}, ${count}) ;;
    value_format_name: percent_0
  }

  # --- Rango 2: 3.1 a 4 Días ---
  measure: vol_entre_3_4_dias {
    label: "Entre 3.1-4 días"
    description: "Volumen de trámites de 3.1 a 4 días"
    type: number
    sql: NULLIF(${total_flg_03a04}, 0) ;;
    value_format: "#,##0"
  }

  measure: pct_entre_3_4_dias {
    label: "% (3.1-4 días)"
    type: number
    sql: SAFE_DIVIDE(${vol_entre_3_4_dias}, ${count}) ;;
    value_format_name: percent_0
  }

  # --- Rango 3: Mayor o igual a 5 Días ---
  measure: vol_mayor_5_dias {
    label: "Mayor o igual a 5 dias"
    description: "Volumen de trámites mayor a 5 días"
    type: number
    sql: NULLIF(${total_flg_05a99}, 0) ;;
    value_format: "#,##0"
  }

  measure: pct_mayor_5_dias {
    label: "% (Mayor o igual a 5 dias)"
    type: number
    sql: SAFE_DIVIDE(${vol_mayor_5_dias}, ${count}) ;;
    value_format_name: percent_0
  }
}
