view: dim_promesa {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.DIM_REPPROM` ;;

  dimension: expediente {
    type: number
    sql: ${TABLE}.EXPEDIENTE ;;
  }

  dimension: sk_expediente {
    type: string
    sql: TO_HEX(${TABLE}.SK_EXPEDIENTE) ;;
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

  dimension: valuador {
    type: string
    sql: ${TABLE}.VALUADOR ;;
  }

  dimension: proveedor {
    type: string
    sql: ${TABLE}.PROVEEDOR ;;
  }

  dimension: ep {
    type: number
    sql: ${TABLE}.EP ;;
  }

  dimension: auto {
    type: number
    sql: ${TABLE}.AUTO ;;
  }

  dimension: tipocdr {
    type: string
    sql: ${TABLE}.TIPOCDR ;;
  }

  dimension: tipotaller {
    type: string
    sql: ${TABLE}.TIPOTALLER ;;
  }

  measure: count {
    type: count
  }
}
