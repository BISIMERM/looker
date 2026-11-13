view: fact_tip_cerc {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.FACT_TIP_CERC` ;;

  # ==========================================
  # 1. DIMENSIONES OCULTAS (LLAVES Y FECHAS)
  # ==========================================
  dimension: sk_reporte {
    type: string
    sql: TO_HEX(${TABLE}.SK_REPORTE) ;;
    hidden: yes
  }

  dimension: sk_ajustador {
    type: string
    sql: TO_HEX(${TABLE}.SK_AJUSTADOR) ;;
    hidden: yes
  }

  dimension: sk_oficina_emision {
    type: string
    sql: TO_HEX(${TABLE}.SK_OFICINA_EMISION) ;;
    hidden: yes
  }

  dimension: sk_fecha_reporte {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_REPORTE) ;;
    hidden: yes
  }

  dimension: sk_fecha_ocurrido {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_OCURRIDO) ;;
    hidden: yes
  }

  dimension: sk_fecha_asignacion {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_ASIGNACION) ;;
    hidden: yes
  }

  dimension: sk_fecha_arribo {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_ARRIBO) ;;
    hidden: yes
  }

  dimension: sk_fecha_termino {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_TERMINO) ;;
    hidden: yes
  }

  dimension_group: fch_carga_dato {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FCH_CARGA_DATO ;;
  }

  # ==========================================
  # 2. DIMENSIONES (TEXTO Y BANDERAS)
  # ==========================================
  dimension: reporte {
    type: string
    sql: ${TABLE}.REPORTE ;;
  }

  dimension: ajustador {
    type: string
    sql: ${TABLE}.AJUSTADOR ;;
  }

  dimension: oficina_emision {
    type: string
    sql: ${TABLE}.OFICINA_EMISION ;;
  }

  dimension: flg_geo_asig {
    type: number
    sql: ${TABLE}.FLG_GEO_ASIG ;;
  }

  dimension: flg_radio {
    type: number
    sql: ${TABLE}.FLG_RADIO ;;
  }

  dimension: flg_motor {
    type: number
    sql: ${TABLE}.FLG_MOTOR ;;
  }

  dimension: flg_taa_0030 {
    type: number
    sql: ${TABLE}.FLG_TAA_0030 ;;
  }

  dimension: flg_taa_3045 {
    type: number
    sql: ${TABLE}.FLG_TAA_3045 ;;
  }

  dimension: flg_taa_4560 {
    type: number
    sql: ${TABLE}.FLG_TAA_4560 ;;
  }

  dimension: flg_taa_6099 {
    type: number
    sql: ${TABLE}.FLG_TAA_6099 ;;
  }

  # ==========================================
  # 3. DIMENSIONES (DATOS NUMÉRICOS CRUDOS)
  # ==========================================
  dimension: conteo_reporte {
    type: number
    sql: ${TABLE}.CONTEO_REPORTE ;;
  }

  dimension: tiempo_asignacion {
    type: number
    sql: ${TABLE}.TIEMPO_ASIGNACION ;;
  }

  dimension: asignacion_cercania {
    type: number
    sql: ${TABLE}.ASIGNACION_CERCANIA ;;
  }

  dimension: ti_atn_presencial {
    type: number
    sql: ${TABLE}.TI_ATN_PRESENCIAL ;;
  }

  dimension: ti_arribo {
    type: number
    sql: ${TABLE}.TI_ARRIBO ;;
  }

  dimension: tiempo_integral {
    type: number
    sql: ${TABLE}.TIEMPO_INTEGRAL ;;
  }

  dimension: cumplimiento_integral {
    type: number
    sql: ${TABLE}.CUMPLIMIENTO_INTEGRAL ;;
  }

  # ==========================================
  # 4. MEDIDAS BASE (OCULTAS, PARA CÁLCULOS)
  # ==========================================
  measure: total_conteo_reporte {
    type: sum
    hidden: yes
    sql: ${TABLE}.CONTEO_REPORTE ;;
  }

  measure: total_cumplimiento_integral {
    type: sum
    hidden: yes
    sql: ${TABLE}.CUMPLIMIENTO_INTEGRAL ;;
  }

  measure: total_ti_arribo {
    label: "Total Tiempo Arribo"
    type: sum
    hidden: yes
    sql: ${ti_arribo} ;;
  }

  measure: total_flg_geo_asig {
    type: sum
    hidden: yes
    sql: ${TABLE}.FLG_GEO_ASIG ;;
  }

  measure: total_tiempo_integral {
    type: sum
    hidden: yes
    sql: ${TABLE}.TIEMPO_INTEGRAL ;;
  }

  measure: total_asignacion_cercania {
    type: sum
    hidden: yes
    sql: ${TABLE}.ASIGNACION_CERCANIA ;;
  }

  measure: total_asignaciones_cercania_reales {
    type: sum
    hidden: yes
    sql: ${TABLE}.FLG_GEO_ASIG
         + ${TABLE}.FLG_RADIO
         + ${TABLE}.FLG_MOTOR
         - IF(${TABLE}.FLG_GEO_ASIG = 1 AND ${TABLE}.FLG_MOTOR = 1, 1, 0)
         - IF(${TABLE}.FLG_GEO_ASIG >= 1 AND ${TABLE}.FLG_RADIO >= 1, 1, 0) ;;
  }

  # ==========================================
  # 5. MEDIDAS PRINCIPALES (PROMEDIOS Y PORCENTAJES)
  # ==========================================

  measure: promedio_tiempo_asignacion {
    label: "Tiempo Asignación"
    type: average
    sql: ${TABLE}.TIEMPO_ASIGNACION / 1440.0 ;;
    value_format: "[h]:mm:ss"
  }

  measure: pct_asignacion_cercania_qlik {
    label: "Asignación por Cercanía"
    description: "Fórmula original Qlik: Asignación Cercanía / Conteo Reporte"
    type: number
    sql: SAFE_DIVIDE(${total_asignacion_cercania}, ${total_conteo_reporte}) ;;
    value_format_name: percent_0
  }

  # --- MÉTRICAS EXISTENTES ---
  measure: atencion {
    label: "Atencion"
    description: "AVG(Ti Atn Presencial) * 60 formateado como HH:MM:SS"
    type: average
    sql: (${TABLE}.TI_ATN_PRESENCIAL * 60) / 86400.0 ;;
    value_format: "[h]:mm:ss"
  }

  measure: promedio_ti_arribo {
    label: "Promedio Tiempo Arribo"
    type: average
    sql: ${ti_arribo} ;;
  }

  measure: porcentaje_reportes_meta_2026 {
    label: "% Reportes en meta 2026"
    description: "SUM(Cumplimiento Integral) / SUM(Conteo Reporte)"
    type: number
    sql: SAFE_DIVIDE(${total_cumplimiento_integral}, ${total_conteo_reporte}) ;;
    value_format_name: percent_2
  }

  measure: pct_geo_asig_2026 {
    label: "Asignacion"
    description: "SUM(Flg Geo Asig) / SUM(Conteo Reporte)"
    type: number
    sql: SAFE_DIVIDE(${total_flg_geo_asig}, ${total_conteo_reporte}) ;;
    value_format_name: percent_2
  }

  measure: promedio_integral_arribo {
    label: "Integral Arribo"
    description: "SUM(Tiempo Integral) / SUM(Conteo Reporte) formateado como HH:MM:SS"
    type: number
    sql: SAFE_DIVIDE(${total_tiempo_integral}, ${total_conteo_reporte}) / 1440.0 ;;
    value_format: "[h]:mm:ss"
  }

  measure: pct_asignacion_cercania_corregido {
    label: "% Asignación por Cercanía (Compleja)"
    description: "Incluye Geo, Radio y Motor, restando duplicidades. Dividido entre Asignación Cercanía."
    type: number
    value_format_name: percent_0
    sql: SAFE_DIVIDE(${total_asignaciones_cercania_reales}, ${total_asignacion_cercania}) ;;
  }

  measure: promedio_arribo_hhmmss {
    label: "Integral Arribo (Ajustador)"
    description: "SUM(Ti Arribo) / SUM(Conteo Reporte) formateado como HH:MM:SS"
    type: number
    sql: SAFE_DIVIDE(${total_ti_arribo}, ${total_conteo_reporte}) / 1440.0 ;;
    value_format: "[h]:mm:ss"
  }

  # ==========================================
  # 6. MEDIDAS DE RANGOS
  # ==========================================

  # --- Rango: Menor a 31 Min ---
  measure: total_menor_31_min {
    label: "Menor 31 Min"
    type: sum
    sql: ${TABLE}.FLG_TAA_0030 ;;
  }

  measure: pct_menor_31_min {
    label: "% 30 0"
    type: number
    sql: SAFE_DIVIDE(${total_menor_31_min}, ${total_conteo_reporte}) ;;
    value_format_name: percent_2
  }

  # --- Rango: Entre 31:01 - 45 Min ---
  measure: total_entre_31_45_min {
    label: "Entre 31:01 - 45 Min"
    type: sum
    sql: ${TABLE}.FLG_TAA_3045 ;;
  }

  measure: pct_entre_31_45_min {
    label: "% 30 45"
    type: number
    sql: SAFE_DIVIDE(${total_entre_31_45_min}, ${total_conteo_reporte}) ;;
    value_format_name: percent_2
  }

  # --- Rango: Entre 45:01 - 60 Min ---
  measure: total_entre_45_60_min {
    label: "Entre 45:01 - 60"
    type: sum
    sql: ${TABLE}.FLG_TAA_4560 ;;
  }

  measure: pct_entre_45_60_min {
    label: "% 45 60"
    type: number
    sql: SAFE_DIVIDE(${total_entre_45_60_min}, ${total_conteo_reporte}) ;;
    value_format_name: percent_2
  }

  # --- Rango: Mayor a 60 Min ---
  measure: total_mayor_60_min {
    label: "Mayor 60 Min"
    type: sum
    sql: ${TABLE}.FLG_TAA_6099 ;;
  }

  measure: pct_mayor_60_min {
    label: "% 60 99"
    type: number
    sql: SAFE_DIVIDE(${total_mayor_60_min}, ${total_conteo_reporte}) ;;
    value_format_name: percent_2
  }
}
