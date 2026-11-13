view: dim_fecha_grua {

  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.DIM_FECHA_GRUA` ;;

  # ==========================================
  # 1. LLAVE SUBROGADA (Oculta para Joins)
  # ==========================================

  dimension: sk_fecha {
    type: string
    hidden: yes
    sql: TO_HEX(${TABLE}.SK_FECHA) ;;
  }

  # ==========================================
  # 2. DIMENSIONES DE CALENDARIO
  # ==========================================

  dimension: num_anio {
    type: number
    label: "Año"
    sql: ${TABLE}.NUM_ANIO ;;
    value_format_name: id
  }

  dimension: num_semestre {
    type: number
    label: "Num Semestre"
    sql: ${TABLE}.NUM_SEMESTRE ;;
  }

  dimension: desc_semestre {
    type: string
    label: "Desc Semestre"
    sql: ${TABLE}.DESC_SEMESTRE ;;
  }

  dimension: num_trimestre {
    type: number
    label: "Num Trimestre"
    sql: ${TABLE}.NUM_TRIMESTRE ;;
  }

  dimension: desc_trimestre {
    type: string
    label: "Desc Trimestre"
    sql: ${TABLE}.DESC_TRIMESTRE ;;
  }

  dimension: num_mes {
    type: number
    label: "Num Mes"
    sql: ${TABLE}.NUM_MES ;;
  }

  dimension: desc_mes {
    type: string
    label: "Desc Mes"
    sql: ${TABLE}.DESC_MES ;;
  }

  dimension: desc_mes_largo {
    type: string
    label: "Desc Mes Largo"
    sql: ${TABLE}.DESC_MES_LARGO ;;
  }

  dimension: num_dia {
    type: number
    label: "Num Día"
    sql: ${TABLE}.NUM_DIA ;;
  }

  dimension: desc_dia {
    type: string
    label: "Desc Día"
    sql: ${TABLE}.DESC_DIA ;;
  }

  # ==========================================
  # 3. FECHAS EXACTAS (Dimension Groups)
  # ==========================================

  dimension_group: fch_fecha {
    label: "Fecha"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    datatype: date
    sql: ${TABLE}.FCH_FECHA ;;
  }

  dimension_group: fch_mes {
    label: "Fecha Mes"
    type: time
    timeframes: [raw, date, month, year]
    datatype: date
    sql: ${TABLE}.FCH_MES ;;
  }

  dimension_group: fch_carga_dato {
    label: "Fecha Carga Dato"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    datatype: date
    sql: ${TABLE}.FCH_CARGA_DATO ;;
    hidden: yes
  }
}
