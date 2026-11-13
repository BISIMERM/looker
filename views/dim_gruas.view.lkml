view: dim_grua_colision {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.DIM_GRUA_COLISION` ;;

  # ==========================================
  # 1. LLAVES SUBROGADAS (Ocultas para Joins)
  # ==========================================

  dimension: sk_servicio {
    type: string
    hidden: yes
    sql: TO_HEX(${TABLE}.SK_SERVICIO) ;;
  }

  # ==========================================
  # 2. DIMENSIONES REGULARES
  # ==========================================

  dimension: id_servicio {
    type: string
    label: "ID Servicio"
    sql: ${TABLE}.ID_SERVICIO ;;
  }

  dimension: id_involucrado {
    type: number
    label: "ID Involucrado"
    sql: ${TABLE}.ID_INVOLUCRADO ;;
  }

  dimension: localizacion {
    type: string
    label: "Localización"
    sql: ${TABLE}.LOCALIZACION ;;
  }

  dimension: estatus_servicio {
    type: string
    label: "Estatus Servicio"
    sql: ${TABLE}.ESTATUS_SERVICIO ;;
  }

  dimension: reporte_sise {
    type: string
    label: "Reporte SISE"
    sql: ${TABLE}.REPORTE_SISE ;;
  }

  # ==========================================
  # 3. FECHAS (Dimension Groups)
  # ==========================================

  dimension_group: alta_serv {
    label: "Alta Servicio"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.ALTA_SERV ;;
  }

  dimension_group: fec_rep {
    label: "Fecha Reporte"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FEC_REP ;;
  }

  dimension_group: fec_asigna {
    label: "Fecha Asignación"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FEC_ASIGNA ;;
  }

  dimension_group: fec_arribo {
    label: "Fecha Arribo"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FEC_ARRIBO ;;
  }

  dimension_group: fch_carga_dato {
    label: "Fecha Carga Dato"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    datatype: date
    sql: ${TABLE}.FCH_CARGA_DATO ;;
  }
}
