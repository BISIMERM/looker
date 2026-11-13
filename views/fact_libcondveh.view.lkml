view: fact_libcondveh {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.FACT_LIBCONDVEH` ;;

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

  dimension: sk_fecha_liberacion_vehiculo {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_LIBERACION_VEHICULO) ;;
    hidden: yes
  }

  dimension: sk_fecha_liberacion_conductor {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_LIBERACION_CONDUCTOR) ;;
    hidden: yes
  }

  dimension: sk_fecha_asignacion_abogado {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_ASIGNACION_ABOGADO) ;;
    hidden: yes
  }
  measure: tiempo_arribo_abogado {
    type: sum
    sql: SAFE_CAST(${TABLE}.TIEMPO_ARRIBO_ABOGADO AS NUMERIC) ;;
  }

  measure: tiempo_liberacion_conductor {
    label: "Tiempo Liberacion Conductor"
    type: sum
    sql: SAFE_CAST(${TABLE}.TIEMPO_LIBERACION_CONDUCTOR AS NUMERIC) ;;
  }

  measure: tiempo_liberacion_vehiculo {
    type: sum
    sql: SAFE_CAST(${TABLE}.TIEMPO_LIBERACION_VEHICULO AS NUMERIC) ;;
  }

  measure: total_contador {
    type: sum
    sql: ${TABLE}.CONTADOR ;;
    description: "Suma total del contador de la tabla"
  }
  # measure: tiempo_arribo_abogado {
  #   type: sum
  # #  sql:COALESCE(${TABLE}.TIEMPO_ARRIBO_ABOGADO, 0);;
  #   sql: ${TABLE}.TIEMPO_ARRIBO_ABOGADO ;;
  # }

  # measure: tiempo_liberacion_conductor {
  #   type: sum
  # #  sql:COALESCE(${TABLE}.TIEMPO_LIBERACION_CONDUCTOR, 0);;
  #   sql: ${TABLE}.TIEMPO_LIBERACION_CONDUCTOR ;;
  # }

  # measure: tiempo_liberacion_vehiculo {
  #   type: sum
  # #  sql:COALESCE(${TABLE}.TIEMPO_LIBERACION_VEHICULO, 0);;
  #   sql: ${TABLE}.TIEMPO_LIBERACION_VEHICULO ;;
  # }
  measure: reportes_cumplen_liberacion_vehiculo {
    type: sum
    sql: CASE WHEN ${TABLE}.TIEMPO_LIBERACION_VEHICULO <= 38 THEN 1 ELSE 0 END ;;
  }

  measure: porcentaje_cumplimiento_vehiculo {
    type: number
    sql: SAFE_DIVIDE(${reportes_cumplen_liberacion_vehiculo}, ${total_contador}) ;;
    value_format_name: percent_0
  }

  measure: reportes_cumplen_liberacion_conductor {
    type: sum
    sql: CASE WHEN ${TABLE}.TIEMPO_LIBERACION_CONDUCTOR <= 18 THEN 1 ELSE 0 END ;;
  }

  measure: porcentaje_cumplimiento_conductor {
    type: number
    sql: SAFE_DIVIDE(${reportes_cumplen_liberacion_conductor}, ${total_contador}) ;;
    value_format_name: percent_0
  }

  # ==========================================
  # Medida base recuperada
  # ==========================================
  measure: count {
    type: count
  }

  # ==========================================
  # Tiempo liberacion veh/contador (Formato Decimal)
  # ==========================================
  measure: tiempo_liberacion_veh_contador {
    label: "Tiempo liberacion vehiculo"
    description: "SUM(Tiempo Liberacion Vehiculo) / SUM(Count)"
    type: number
    sql: SAFE_DIVIDE(${tiempo_liberacion_vehiculo}, ${count}) ;;
    value_format_name: decimal_1
  }

  # ==========================================
  # Tiempo liberacion cond/contador (Formato Reloj HH:MM:SS)
  # ==========================================
  measure: tiempo_liberacion_cond_contador {
    label: "Tiempo liberacion conductor"
    description: "(SUM(Tiempo Liberacion Conductor) / SUM(Total Contador))"
    type: number
    sql: SAFE_DIVIDE(${tiempo_liberacion_conductor}, ${count}) ;;
    value_format_name: decimal_1
  }
}
