view: fact_av_siag_qasis {

  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.FACT_AV_SIAG_QASIS` ;;


  dimension: sk_id_servicio {
    primary_key: yes
    type: string
    sql: TO_HEX(${TABLE}.SK_ID_SERVICIO) ;;
    hidden: yes
  }

  dimension: sk_reporte {
    type: string
    sql: TO_HEX(${TABLE}.SK_REPORTE) ;;
    hidden: yes
  }

  dimension: sk_fecha_reporte {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_REPORTE) ;;
    hidden: yes
  }

  dimension: sk_fecha_arribo {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_ARRIBO) ;;
    hidden: yes
  }

  dimension: sk_fecha_alta {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_ALTA) ;;
    hidden: yes
  }

  dimension: sk_fecha_asignacion {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_ASIGNACION) ;;
    hidden: yes
  }

  dimension: tiempo_integral_asignacion {
    type: number
    sql: ${TABLE}.TIEMPO_INTEGRAL_ASIGNACION ;;
    hidden: yes
  }

  dimension: tiempo_integral_arribo {
    type: number
    sql: ${TABLE}.TIEMPO_INTEGRAL_ARRIBO ;;
    hidden: yes
  }

  dimension: grupo1 {
    type: number
    sql: ${TABLE}.GRUPO1 ;;
    hidden: yes
  }

  dimension: grupo2 {
    type: number
    sql: ${TABLE}.GRUPO2 ;;
    hidden: yes
  }

  dimension: grupo3 {
    type: number
    sql: ${TABLE}.GRUPO3 ;;
    hidden: yes
  }

  dimension: grupo4 {
    type: number
    sql: ${TABLE}.GRUPO4 ;;
    hidden: yes
  }

  dimension: flg_av_siag {
    type: number
    sql: ${TABLE}.FLG_AV_SIAG ;;
    hidden: yes
  }

  dimension: flg_av_qasistencia {
    type: number
    sql: ${TABLE}.FLG_AV_QASISTENCIA ;;
    hidden: yes
  }

  # ==========================================
  # BANDERAS Y CONTEOS BASE
  # ==========================================

  measure: total_flg_av_siag {
    label: "CantServSIAG"
    type: sum
    sql: ${TABLE}.FLG_AV_SIAG ;;
    description: "Suma total de banderas AV SIAG"
  }

  measure: total_flg_av_qasistencia {
    label: "CantServQA"
    type: sum
    sql: ${TABLE}.FLG_AV_QASISTENCIA ;;
    description: "Suma total de banderas AV QASISTENCIA"
  }

  measure: total_flg_combinado {
    label: "CantServTotal"
    type: sum
    sql: ${TABLE}.FLG_AV_SIAG + ${TABLE}.FLG_AV_QASISTENCIA ;;
    description: "Suma total de banderas AV SIAG y QASISTENCIA"
  }

  measure: count {
    type: count
    description: "Conteo total de registros"
  }

  measure: total_grupo1 {
    label: "Cantg1"
    type: sum
    sql: ${TABLE}.GRUPO1 ;;
  }

  measure: total_grupo2 {
    label: "Cantg2"
    type: sum
    sql: ${TABLE}.GRUPO2 ;;
  }

  measure: total_grupo3 {
    label: "Cantg3"
    type: sum
    sql: ${TABLE}.GRUPO3 ;;
  }

  measure: total_grupo4 {
    label: "Cantg4"
    type: sum
    sql: ${TABLE}.GRUPO4 ;;
  }

  # ==========================================
  # MÉTRICAS DINÁMICAS (Inklusibo ti 2026+)
  # ==========================================


#   measure: total_tiempo_int_arr_dinamico {
#     type: sum
#     hidden: yes
#     sql:
#       CASE
#         WHEN (
#           CASE
#             WHEN ${dim_fecha_alta.num_anio} < 2025
#               OR (${dim_fecha_alta.num_anio} = 2025 AND${dim_fecha_alta.num_mes} < 11)
#             THEN ${TABLE}.FLG_AV_SIAG
#             ELSE ${TABLE}.FLG_AV_QASISTENCIA
#           END
#         ) = 1
#         THEN COALESCE(${TABLE}.TIEMPO_INTEGRAL_ARRIBO, 0)
#         ELSE 0
#       END ;;
#   }

#   measure: prom_tiempo_int_arribo_dinamico {
#     label: "PromTiempoIntArribo (Dinámico)"
#     description: "Promedio de tiempo de arribo dividido entre 60"
#     type: number
#     sql: SAFE_DIVIDE(SAFE_DIVIDE(${total_tiempo_int_arr_dinamico}, NULLIF(${cant_servicios_unificado}, 0)), 60.0) ;;
#     value_format_name: decimal_2
#   }

#   # ==========================================
#   # MÉTRICAS COMBINADAS HISTÓRICAS
#   # ==========================================

#   measure: volumen_total_siag_qa {
#     type: sum
#     hidden: yes
#     sql:
#       CASE
#         WHEN ${TABLE}.FLG_AV_SIAG = 1
#           OR ${TABLE}.FLG_AV_QASISTENCIA = 1
#         THEN 1
#         ELSE 0
#       END ;;
#   }

#   measure: suma_tiempo_asignacion_siag_qa {
#     type: sum
#     hidden: yes
#     sql:
#       CASE
#         WHEN ${TABLE}.FLG_AV_SIAG = 1
#           OR ${TABLE}.FLG_AV_QASISTENCIA = 1
#         THEN COALESCE(${TABLE}.TIEMPO_INTEGRAL_ASIGNACION, 0)
#         ELSE 0
#       END ;;
#   }

#   measure: tiempo_promedio_asignacion_siag_qa {
#     label: "Tiempo Integral de Asignación SIAG y QA"
#     type: number
#     sql:
#       NULLIF(
#         SAFE_DIVIDE(
#           ${suma_tiempo_asignacion_siag_qa},${volumen_total_siag_qa}
#         ),
#         0
#       ) / 1440.0 ;;
#     value_format: "[h]:mm:ss"
#   }

#   measure: suma_tiempo_siag_qa {
#     type: sum
#     hidden: yes
#     sql:
#       CASE
#         WHEN ${TABLE}.FLG_AV_SIAG = 1
#           OR ${TABLE}.FLG_AV_QASISTENCIA = 1
#         THEN COALESCE(${TABLE}.TIEMPO_INTEGRAL_ARRIBO, 0)
#         ELSE 0
#       END ;;
#   }

#   measure: tiempo_promedio_siag_qa {
#     label: "Tiempo Integral de Arribo SIAG y QA"
#     type: number
#     sql:
#       NULLIF(
#         SAFE_DIVIDE(
#           ${suma_tiempo_siag_qa},${volumen_total_siag_qa}
#         ),
#         0
#       ) / 1440.0 ;;
#     value_format: "[h]:mm:ss"
#   }

#   # ==========================================
#   # RANGOS Y METAS
#   # ==========================================

#   measure: total_dentro_meta {
#     type: sum
#     hidden: yes
#     sql:
#       CASE
#         WHEN (
#           ${TABLE}.FLG_AV_SIAG = 1
#           OR ${TABLE}.FLG_AV_QASISTENCIA = 1
#         )
#         AND ${TABLE}.TIEMPO_INTEGRAL_ARRIBO <= 95
#         THEN 1
#         ELSE 0
#       END ;;
#   }

#   measure: pct_dentro_meta {
#     label: "Rango dentro de Meta"
#     type: number
#     sql:
#       SAFE_DIVIDE(
#         ${total_dentro_meta},${volumen_total_siag_qa}
#       ) ;;
#     value_format_name: percent_0
#   }

#   measure: rango_menor_1_35_vol {
#     label: "Igual o menor 1:35"
#     type: sum
#     sql:
#       CASE
#         WHEN (
#           ${TABLE}.FLG_AV_SIAG = 1
#           OR ${TABLE}.FLG_AV_QASISTENCIA = 1
#         )
#         AND ${TABLE}.TIEMPO_INTEGRAL_ARRIBO <= 95
#         THEN 1
#         ELSE 0
#       END ;;
#     value_format_name: decimal_0
#   }

#   measure: rango_menor_1_35_pct {
#     label: "% Igual o menor 1:35"
#     type: number
#     sql:
#       SAFE_DIVIDE(
#         ${rango_menor_1_35_vol},${volumen_total_siag_qa}
#       ) ;;
#     value_format_name: percent_0
#   }

#   measure: rango_1_35_a_2_00_vol {
#     label: "Entre 1:35 y 2:00"
#     type: sum
#     sql:
#       CASE
#         WHEN (
#           ${TABLE}.FLG_AV_SIAG = 1
#           OR ${TABLE}.FLG_AV_QASISTENCIA = 1
#         )
#         AND ${TABLE}.TIEMPO_INTEGRAL_ARRIBO > 95
#         AND ${TABLE}.TIEMPO_INTEGRAL_ARRIBO <= 120
#         THEN 1
#         ELSE 0
#       END ;;
#     value_format_name: decimal_0
#   }

#   measure: rango_1_35_a_2_00_pct {
#     label: "% Entre 1:35 y 2:00"
#     type: number
#     sql:
#       SAFE_DIVIDE(
#         ${rango_1_35_a_2_00_vol},${volumen_total_siag_qa}
#       ) ;;
#     value_format_name: percent_0
#   }

#   measure: rango_2_00_a_3_00_vol {
#     label: "Entre 2:00 y 3:00"
#     type: sum
#     sql:
#       CASE
#         WHEN (
#           ${TABLE}.FLG_AV_SIAG = 1
#           OR ${TABLE}.FLG_AV_QASISTENCIA = 1
#         )
#         AND ${TABLE}.TIEMPO_INTEGRAL_ARRIBO > 120
#         AND ${TABLE}.TIEMPO_INTEGRAL_ARRIBO <= 180
#         THEN 1
#         ELSE 0
#       END ;;
#     value_format_name: decimal_0
#   }

#   measure: rango_2_00_a_3_00_pct {
#     label: "% Entre 2:00 y 3:00"
#     type: number
#     sql:
#       SAFE_DIVIDE(
#         ${rango_2_00_a_3_00_vol},${volumen_total_siag_qa}
#       ) ;;
#     value_format_name: percent_0
#   }

#   measure: rango_mayor_3_00_vol {
#     label: "Mayor a 3 hrs"
#     type: sum
#     sql:
#       CASE
#         WHEN (
#           ${TABLE}.FLG_AV_SIAG = 1
#           OR ${TABLE}.FLG_AV_QASISTENCIA = 1
#         )
#         AND ${TABLE}.TIEMPO_INTEGRAL_ARRIBO > 180
#         THEN 1
#         ELSE 0
#       END ;;
#     value_format_name: decimal_0
#   }

#   measure: rango_mayor_3_00_pct {
#     label: "% Mayor a 3 hrs"
#     type: number
#     sql:
#       SAFE_DIVIDE(
#         ${rango_mayor_3_00_vol},${volumen_total_siag_qa}
#       ) ;;
#     value_format_name: percent_0
#   }

  # ==========================================
  # MÉTRICAS EXACTAS DE TIEMPOS (ASIGNACIÓN Y ARRIBO)
  # ==========================================

  # 1. Total Tiempo Integral Asignación
  measure: total_tiempo_int_asig {
    label: "TotalTiempoIntAsig"
    type: sum
    sql:(${TABLE}.TIEMPO_INTEGRAL_ASIGNACION) ;;
  }

  # 2. Promedio Tiempo Integral Asignación
  measure: prom_tiempo_int_asig_SIAG {
    label: "PromTiempoIntAsig SIAG"
    type: number
    sql: SAFE_DIVIDE(${total_tiempo_int_asig}, (${total_flg_av_siag})) /60 /24 ;;
    value_format: "[h]:mm:ss"
  }

  measure: prom_tiempo_int_asig_QASISTENCIA {
    label: "PromTiempoIntAsig QA"
    type: number
    sql: SAFE_DIVIDE(${total_tiempo_int_asig}, (${total_flg_av_qasistencia})) /60 /24 ;;
    value_format: "[h]:mm:ss"
  }

  # 3. Total Tiempo Integral Arribo
  measure: total_tiempo_int_arribo {
    label: "TotalTiempoIntArr"
    type: sum
    sql:(${TABLE}.TIEMPO_INTEGRAL_ARRIBO) ;;
  }

  # 4. Promedio Tiempo Integral Arribo
  measure: prom_tiempo_int_arribo_SIAG {
    label: "PromTiempoIntArribo SIAG"
    type: number
    sql: SAFE_DIVIDE(${total_tiempo_int_arribo}, (${total_flg_av_siag})) /60 /24 ;;
    value_format: "[h]:mm:ss"
  }

  measure: prom_tiempo_int_arribo_QASISTENCIA {
    label: "PromTiempoIntArribo QA"
    type: number
    sql: SAFE_DIVIDE(${total_tiempo_int_arribo}, (${total_flg_av_qasistencia})) /60 /24 ;;
    value_format: "[h]:mm:ss"
  }

  measure: tiempo_total_flg {
    label: "TotalTiempoFLG"
    type: sum
    sql: ${total_tiempo_int_arribo} + ${total_tiempo_int_asig} ;;
    value_format: "[h]:mm:ss"
  }

  measure: prom_tiempo_total {
    label: "PromTiempoTotal"
    type: number
    sql: SAFE_DIVIDE(${tiempo_total_flg}, (${total_flg_combinado})) /60 /24 ;;
    value_format: "[h]:mm:ss"
  }

}
