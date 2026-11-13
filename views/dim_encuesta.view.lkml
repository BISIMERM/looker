view: dim_encuesta {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.DIM_ENCUESTA` ;;
#
  dimension: tipo_encuesta {
    type: string
    sql: ${TABLE}.TIPO_ENCUESTA ;;
  }

  dimension: encuesta {
    type: string
    sql: ${TABLE}.ENCUESTA ;;
  }

  # dimension: sk_fecha_envio {
  #   type: string
  #   sql: ${TABLE}.SK_FECHA_ENVIO ;;
  #   hidden: yes
  # }
  dimension: sk_fecha_envio {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_ENVIO) ;;
    hidden: yes
  }



  dimension: sk_fecha_respuesta {
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_RESPUESTA) ;;
    hidden: yes
  }

  dimension: area {
    type: string
    sql: ${TABLE}.AREA ;;
  }

  dimension: sk_tid {
    type: string
    sql: TO_HEX(${TABLE}.SK_ENCUESTA );;
    hidden: yes
  }

  dimension: clave_encuesta {
    type: string
    sql: ${TABLE}.CLAVE_ENCUESTA ;;
  }

  dimension: desc_encuesta {
    type: string
    sql: ${TABLE}.DESC_ENCUESTA ;;
  }

  measure: count {
    type: count
    description: "Conteo total de encuestas"
  }
}
