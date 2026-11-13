view: fact_encuesta {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.FACT_ENCUESTA` ;;
#nota
  dimension: bit_detractor {
    type: number
    sql: ${TABLE}.BIT_DETRACTOR ;;
  }
  dimension: bit_promotor {
    type: number
    sql: ${TABLE}.BIT_PROMOTOR ;;
  }
  dimension: contador {
    type: number
    sql: ${TABLE}.CONTADOR ;;
  }
  dimension_group: fch_carga_dato {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FCH_CARGA_DATO ;;
    hidden: yes
  }
  dimension_group: fch_modificacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FCH_MODIFICACION ;;
    hidden: yes
  }
  dimension: sk_encuesta {
    type: string
    sql: TO_HEX(${TABLE}.SK_ENCUESTA) ;;
    hidden: yes
  }
  dimension: sk_fecha_envio {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_ENCUESTA) ;;
    hidden: yes
  }

  dimension: sk_fecha_respuesta {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_RESPUESTA) ;;
    hidden: yes
  }

  dimension: sk_reporte {
    type: string
    sql: TO_HEX(${TABLE}.SK_REPORTE) ;;
    hidden: yes
  }

# 1. Suma de Bits
  measure: total_promotor {
    label: "Total Promotor"
    type: sum
    sql: ${TABLE}.BIT_PROMOTOR ;;
  }

  measure: total_detractor {
    label: "Total Detractor"
    type: sum
    sql: ${TABLE}.BIT_DETRACTOR ;;
  }

# 2. Suma de Contador
  measure: total_contador {
    label: "Total Contador"
    type: number
    sql: ${total_promotor} + ${total_detractor} ;;
  }

# 3. Campo calculado PS
  measure: ps {
    label: "PS"
    description: "SUM(Bit Promotor) / SUM(Contador)"
    type: number
    sql: SAFE_DIVIDE(${total_promotor}, ${total_contador}) ;;
    value_format_name: percent_1
  }
}
