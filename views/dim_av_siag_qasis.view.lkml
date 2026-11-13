view: dim_av_siag_qasis {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.DIM_AV_SIAG_QASIS` ;;

  dimension: id_servicio {
    type: number
    sql: ${TABLE}.ID_SERVICIO ;;
  }

  dimension: sk_id_servicio {
    type: string
    sql: TO_HEX(${TABLE}.SK_ID_SERVICIO) ;;
    hidden: yes
  }

  dimension: reporte {
    type: string
    sql: ${TABLE}.REPORTE ;;
  }

  dimension: sk_reporte {
    type: string
    sql: TO_HEX(${TABLE}.SK_REPORTE) ;;
    hidden: yes
  }

  dimension_group: fecha_reporte {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    datatype: date
    sql: ${TABLE}.FECHA_REPORTE ;;
  }

  dimension: sk_fecha_reporte {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_REPORTE) ;;
    hidden: yes
  }

  dimension_group: fecha_arribo {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    datatype: date
    sql: ${TABLE}.FECHA_ARRIBO ;;
  }

  dimension: sk_fecha_arribo {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_ARRIBO) ;;
    hidden: yes
  }

  dimension_group: fecha_alta {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    datatype: date
    sql: ${TABLE}.FECHA_ALTA ;;
  }

  dimension: sk_fecha_alta {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_ALTA) ;;
    hidden: yes
  }

  dimension_group: fecha_asignacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    datatype: date
    sql: ${TABLE}.FECHA_ASIGNACION ;;
  }

  dimension: sk_fecha_asignacion {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_ASIGNACION) ;;
    hidden: yes
  }

  dimension: grupo1 {
    type: string
    sql: ${TABLE}.GRUPO1 ;;
  }

  dimension: grupo2 {
    type: string
    sql: ${TABLE}.GRUPO2 ;;
  }

  dimension: grupo3 {
    type: string
    sql: ${TABLE}.GRUPO3 ;;
  }

  dimension: grupo4 {
    type: string
    sql: ${TABLE}.GRUPO4 ;;
  }

  dimension: flg_av_siag {
    type: string
    sql: ${TABLE}.FLG_AV_SIAG ;;
  }

  dimension: flg_av_qasistencia {
    type: string
    sql: ${TABLE}.FLG_AV_QASISTENCIA ;;
  }

  measure: count {
    type: count
    description: "Conteo de registros"
  }
}
