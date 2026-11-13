view: fact_promesa {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.FACT_REPPROM` ;;

  dimension: sk_reporte {
    type: string
    sql: TO_HEX(${TABLE}.SK_REPORTE) ;;
    hidden: yes
  }

  dimension: sk_expediente {
    type: string
    sql: TO_HEX(${TABLE}.SK_EXPEDIENTE) ;;
    hidden: yes
  }

  dimension: sk_fecha_terminado {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_TERMINADO) ;;
    hidden: yes
  }

  dimension: tipotaller {
    type: string
    sql: ${TABLE}.TIPOTALLER ;;
  }

  dimension: tipocdr {
    type: string
    sql: ${TABLE}.TIPOCDR ;;
  }

  dimension: auto {
    type: number
    sql: ${TABLE}.AUTO ;;
  }

  dimension: ep {
    type: number
    sql: ${TABLE}.EP ;;
  }

  dimension: proveedor {
    type: string
    sql: ${TABLE}.PROVEEDOR ;;
  }

  dimension_group: fecha_terminado {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FECHA_TERMINADO ;;
  }

  dimension: cumplefechapromesa {
    type: number
    sql: ${TABLE}.CUMPLEFECHAPROMESA ;;
  }

  dimension: diasnaturalesreparacion {
    type: number
    sql: ${TABLE}.DIASNATURALESREPARACION ;;
  }

  dimension: diashabilesreparacion {
    type: number
    sql: ${TABLE}.DIASHABILESREPARACION ;;
  }

  dimension: contador {
    type: number
    sql: ${TABLE}.CONTADOR ;;
  }

  measure: total_contador {
    type: sum
    sql: ${contador} ;;
  }

# ==========================================
# Sumas Base
# ==========================================
  measure: total_dias_naturales_reparacion {
    label: "Total dias naturales"
    type: sum
    sql: ${TABLE}.DIASNATURALESREPARACION ;;
  }

  measure: total_dias_habiles_reparacion {
    label: "Total dias Habiles"
    type: sum
    sql: ${TABLE}.DIASHABILESREPARACION ;;
  }

  measure: total_cumple_fecha_promesa {
    type: sum
    sql: ${TABLE}.CUMPLEFECHAPROMESA ;;
    hidden: yes
  }

# ==========================================
# Métricas Autos Calculadas
# ==========================================
  measure: tiempo_de_reparacion_natural {
    label: "Tiempo de reparacion naturales"
    description: "SUM(Diasnaturalesreparacion) / SUM(Total Contador)"
    type: number
    sql: SAFE_DIVIDE(${total_dias_naturales_reparacion}, ${total_contador}) ;;
    value_format_name: decimal_2
  }

  measure: tiempo_de_reparacion_habiles {
    label: "Tiempo de reparación"
    description: "SUM(Diashabilesreparacion) / SUM(Total Contador)"
    type: number
    sql: SAFE_DIVIDE(${total_dias_habiles_reparacion}, ${total_contador}) ;;
    value_format_name: decimal_1
  }

  measure: reportes_en_meta_autos_agencia {
    label: "% Reportes en meta agencia"
    type: number
    sql: SAFE_DIVIDE(${hasta_16_dias}, ${total_contador}) ;;
    value_format_name: percent_0
  }

  measure: reportes_en_meta_autos_taller {
    label: "% Reportes en meta taller"
    type: number
    sql: SAFE_DIVIDE(${hasta_14_dias}, ${total_contador}) ;;
    value_format_name: percent_0
  }

  measure: reportes_en_meta_ep {
    label: "% Reportes en meta"
    type: number
    sql: SAFE_DIVIDE(${hasta_35_dias}, ${total_contador}) ;;
    value_format_name: percent_0
  }

# ==========================================
# 1. Rango: Hasta 14 días
# ==========================================
  measure: hasta_14_dias {
    label: "Hasta 14 dias"
    type: sum
    sql: CASE WHEN ${TABLE}.DIASHABILESREPARACION <= 14 THEN ${TABLE}.CONTADOR ELSE 0 END ;;
  }

  measure: pct_hasta_14_dias {
    label: "% 14"
    type: number
    sql: SAFE_DIVIDE(${hasta_14_dias}, ${total_contador}) ;;
    value_format_name: percent_0
  }

# ===========================================
# 2. Rango: 14.1 a 60 días
# ===========================================
  measure: entre_14_y_60_dias {
    label: "14.1 a 60 días"
    type: sum
    sql: CASE WHEN ${TABLE}.DIASHABILESREPARACION > 14 AND ${TABLE}.DIASHABILESREPARACION <= 60 THEN ${TABLE}.CONTADOR ELSE 0 END ;;
  }

  measure: pct_entre_14_y_60_dias {
    label: "% 14.1 a 60"
    type: number
    sql: SAFE_DIVIDE(${entre_14_y_60_dias}, ${total_contador}) ;;
    value_format_name: percent_0
  }

# ==========================================
# 1. Rango: Hasta 16 días
# ==========================================
  measure: hasta_16_dias {
    label: "Hasta 16 dias"
    type: sum
    sql: CASE WHEN ${TABLE}.DIASHABILESREPARACION <= 16 THEN ${TABLE}.CONTADOR ELSE 0 END ;;
  }

  measure: pct_hasta_16_dias {
    label: "% 16"
    type: number
    sql: SAFE_DIVIDE(${hasta_16_dias}, ${total_contador}) ;;
    value_format_name: percent_0
  }

# ==========================================
# 2. Rango: 16.1 a 60 días
# ==========================================
  measure: entre_16_y_60_dias {
    label: "16.1 a 60 días"
    type: sum
    sql: CASE WHEN ${TABLE}.DIASHABILESREPARACION > 16 AND ${TABLE}.DIASHABILESREPARACION <= 60 THEN ${TABLE}.CONTADOR ELSE 0 END ;;
  }

  measure: pct_entre_16_y_60_dias {
    label: "% 16.1 a 60"
    type: number
    sql: SAFE_DIVIDE(${entre_16_y_60_dias}, ${total_contador}) ;;
    value_format_name: percent_0
  }

# ==========================================
# 3. Rango: Mayor a 60 días
# ==========================================
  measure: mayor_60_dias {
    label: "Mayor a 60 días"
    type: sum
    sql: CASE WHEN ${TABLE}.DIASHABILESREPARACION > 60 THEN ${TABLE}.CONTADOR ELSE 0 END ;;
  }

  measure: pct_mayor_60_dias {
    label: "% Mayor a 60 días"
    type: number
    sql: SAFE_DIVIDE(${mayor_60_dias}, ${total_contador}) ;;
    value_format_name: percent_0
  }

  measure: pct_entrega_fecha_promesa_autos {
    label: "% Entrega Fecha Promesa Autos"
    description: "SUM(Cumplefechapromesa) / SUM(Contador)"
    type: number
    sql: SAFE_DIVIDE(${total_cumple_fecha_promesa}, ${total_contador}) ;;
    value_format_name: percent_0
  }

# ==========================================

# Métricas EP Calculadas
# ==========================================

# ==========================================
# 1. Rango: Hasta 35 días
# ==========================================
  measure: hasta_35_dias {
    label: "Hasta 35 dias"
    type: sum
    sql: CASE WHEN ${TABLE}.DIASHABILESREPARACION <= 35 THEN ${TABLE}.CONTADOR ELSE 0 END ;;
  }

  measure: pct_hasta_35_dias {
    label: "% 35"
    type: number
    sql: SAFE_DIVIDE(${hasta_35_dias}, ${total_contador}) ;;
    value_format_name: percent_0
  }

# ==========================================
# 2. Rango: 35.1 a 55 días
# ==========================================
  measure: entre_35_1_y_55_dias {
    label: "35.1 a 55 días"
    type: sum
    sql: CASE WHEN ${TABLE}.DIASHABILESREPARACION > 35 AND ${TABLE}.DIASHABILESREPARACION <= 55 THEN ${TABLE}.CONTADOR ELSE 0 END ;;
  }

  measure: pct_entre_35_y_55_dias {
    label: "% 35.1 a 55"
    type: number
    sql: SAFE_DIVIDE(${entre_35_1_y_55_dias}, ${total_contador}) ;;
    value_format_name: percent_0
  }

# ==========================================
# 3. Rango: 55.1 a 90 días
# ==========================================
  measure: entre_55_1_y_90_dias {
    label: "55.1 a 90 días"
    type: sum
    sql: CASE WHEN ${TABLE}.DIASHABILESREPARACION > 55 AND ${TABLE}.DIASHABILESREPARACION <= 90 THEN ${TABLE}.CONTADOR ELSE 0 END ;;
  }

  measure: pct_entre_55_y_90_dias {
    label: "% 55.1 a 90"
    type: number
    sql: SAFE_DIVIDE(${entre_55_1_y_90_dias}, ${total_contador}) ;;
    value_format_name: percent_0
  }

# ==========================================
# 4. Rango: Mayor a 90 días
# ==========================================
  measure: mayor_90_dias {
    label: "Mayor a 90 días"
    type: sum
    sql: CASE WHEN ${TABLE}.DIASHABILESREPARACION > 90 THEN ${TABLE}.CONTADOR ELSE 0 END ;;
  }

  measure: pct_mayor_90_dias {
    label: "% Mayor a 90 días"
    type: number
    sql: SAFE_DIVIDE(${mayor_90_dias}, ${total_contador}) ;;
    value_format_name: percent_0
  }
}
