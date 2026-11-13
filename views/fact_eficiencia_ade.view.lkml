view: fact_eficiencia_ade {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.FACT_EFICIENCIA_ADE` ;;

  dimension: sk_fecha_reporte {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_REPORTE) ;;
    hidden: yes
  }

  dimension: sk_reporte {
    type: string
    sql: TO_HEX(${TABLE}.SK_REPORTE) ;;
    hidden: yes
  }

  dimension: sk_encuesta {
    type: string
    sql: TO_HEX(${TABLE}.SK_ENCUESTA) ;;
    hidden: yes
  }

  measure: total_rechazado {
    type: sum
    sql: ${TABLE}.FLG_RECHAZADO ;;
    description: "Suma total de banderas de rechazo"
  }

  measure: total_aceptado {
    type: sum
    sql: ${TABLE}.FLG_ACEPTADO ;;
    description: "Suma total de banderas de aceptación"
  }

  measure: total_contador {
    type: sum
    sql: ${TABLE}.CONTADOR ;;
    description: "Suma total del contador"
  }

  measure: count {
    type: count
    description: "Conteo de registros"
  }

  measure: porcentaje_eficiencia {
    label: "% Eficiencia"
    description: "Suma de Total Aceptado / Suma de Total Contador"
    type: number
    sql: SAFE_DIVIDE(${total_aceptado}, ${total_contador}) ;;
    value_format_name: percent_0
  }
}
