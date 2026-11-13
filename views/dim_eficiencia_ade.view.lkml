view: dim_eficiencia_ade {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.DIM_EFICIENCIA_ADE` ;;

  dimension_group: fecha_reporte {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.FECHA_REPORTE ;;
  }

  dimension: sk_fecha_reporte {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_REPORTE) ;;
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
}
