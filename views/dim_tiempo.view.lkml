view: dim_tiempo {
  sql_table_name: `qlts-prod-mx-au-oro-ops-63de.robos.DIM_TIEMPO` ;;

  dimension: sk_fecha {
    primary_key: yes
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA) ;;
    hidden: yes
  }

  dimension: desc_dia {
    label: "Día"
    type: string
    sql: ${TABLE}.DESC_DIA ;;
  }

  dimension: desc_mes {
    label: "Mes"
    type: string
    sql: ${TABLE}.DESC_MES ;;
    order_by_field: num_mes
  }

  dimension: desc_mes_largo {
    label: "Mes Largo"
    type: string
    sql: ${TABLE}.DESC_MES_LARGO ;;
    order_by_field: num_mes
  }

  dimension: desc_semestre {
    label: "Semestre Textual"
    type: string
    sql: ${TABLE}.DESC_SEMESTRE ;;
  }

  dimension: desc_trimestre {
    label: "Trimestre Textual"
    type: string
    sql: ${TABLE}.DESC_TRIMESTRE ;;
  }

  dimension: num_anio {
    label: "Año"
    type: number
    sql: ${TABLE}.NUM_ANIO ;;
    value_format: "0"
  }

  dimension: num_dia {
    label: "Número de Día"
    type: number
    sql: ${TABLE}.NUM_DIA ;;
  }

  dimension: num_mes {
    label: "Número de Mes"
    type: number
    sql: ${TABLE}.NUM_MES ;;
    hidden: yes
  }

  dimension: num_semestre {
    label: "Número de Semestre"
    type: number
    sql: ${TABLE}.NUM_SEMESTRE ;;
  }

  dimension: num_trimestre {
    label: "Número de Trimestre"
    type: number
    sql: ${TABLE}.NUM_TRIMESTRE ;;
  }

  dimension_group: fch_fecha {
    label: "Fecha"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FCH_FECHA ;;
  }

  measure: count {
    type: count
  }
}
