view: fact_valuacion {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.FACT_VALUACION` ;;

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

  dimension: sk_expediente {
    type: string
    sql: TO_HEX(${TABLE}.SK_EXPEDIENTE) ;;
    hidden: yes
  }

  dimension: sk_fecha_valuacion {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_VALUACION) ;;
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

  dimension: tiempo_primera_valuacion {
    type: number
    sql: ${TABLE}.TIEMPOPRIMERAVALUACION ;;
  }

  dimension: cumple_dias_valuacion {
    type: number
    sql: ${TABLE}.CUMPLE_DIAS_VALUACION ;;
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
  measure: total_tiempo_primera_valuacion {
    label: "Tiempo total primera valuacion"
    type: sum
    sql: ${tiempo_primera_valuacion} ;;
  }

  measure: total_cumple_dias_valuacion {
    type: sum
    sql: ${cumple_dias_valuacion} ;;
    hidden: yes
  }

  # ==========================================
  # Métricas Finales Calculadas
  # ==========================================

  measure: promedio_tiempo_valuacion {
    label: "Tiempo Promedio"
    description: "SUM(Tiempo Primera Valuacion) / SUM(Total Contador)"
    type: number
    sql: SAFE_DIVIDE(${total_tiempo_primera_valuacion}, ${total_contador}) ;;
    value_format_name: decimal_1
  }

  measure: pct_cump {
    label: "% Cump"
    description: "SUM(Cumple Dias Valuacion) / SUM(Total Contador)"
    type: number
    sql: SAFE_DIVIDE(${total_cumple_dias_valuacion}, ${total_contador}) ;;
    value_format_name: percent_1
  }

  # ==========================================
  # Métricas < 24 Horas
  # ==========================================

  measure: valuaciones_menor_24_horas {
    label: "Valuaciones < 24 hrs"
    description: "Suma del contador cuando el tiempo de valuación es menor a 24 horas"
    type: sum
    sql: CASE WHEN ${TABLE}.TIEMPOPRIMERAVALUACION < 24 THEN ${TABLE}.CONTADOR ELSE 0 END ;;
  }

  measure: pct_valuacion_menor_24_horas {
    label: "% valuacion autos < 24 horas"
    description: "Valuaciones < 24 hrs / Total Contador"
    type: number
    sql: SAFE_DIVIDE(${valuaciones_menor_24_horas}, ${total_contador}) ;;
    value_format_name: percent_0
  }
}
