view: dim_valuacion {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.DIM_VALUACION` ;;

  dimension: reporte {
    type: string
    sql: ${TABLE}.REPORTE ;;
  }

  dimension: sk_reporte {
    type: string
    sql: TO_HEX(${TABLE}.SK_REPORTE) ;;
    hidden: yes
  }

  dimension: expediente {
    type: string
    sql: ${TABLE}.EXPEDIENTE ;;
  }

  dimension: sk_expediente {
    type: string
    sql: TO_HEX(${TABLE}.SK_EXPEDIENTE) ;;
    hidden: yes
  }

  dimension: ajustador {
    type: string
    sql: ${TABLE}.AJUSTADOR ;;
  }

  dimension: sk_ajustador {
    type: string
    sql: TO_HEX(${TABLE}.SK_AJUSTADOR) ;;
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

  dimension: equipopesado {
    type: number
    sql: ${TABLE}.EQUIPOPESADO ;;
  }

  dimension: idvaluacion {
    type: string
    sql: ${TABLE}.IDVALUACION ;;
  }

  dimension: tipocdr {
    type: string
    sql: ${TABLE}.TIPOCDR ;;
  }

  dimension: codvaluador {
    type: string
    sql: ${TABLE}.CODVALUADOR ;;
  }

  dimension: clavetaller {
    type: string
    sql: ${TABLE}.CLAVETALLER ;;
  }

  dimension: proveedor {
    type: string
    sql: ${TABLE}.PROVEEDOR ;;
  }

  measure: count {
    type: count
  }
}
