view: dim_libcondveh {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.DIM_LIBCONDVEH` ;;

  dimension: abogado {
    type: string
    sql: ${TABLE}.ABOGADO ;;
  }

  dimension: coordinador {
    type: string
    sql: ${TABLE}.COORDINADOR ;;
  }

  dimension: gerencia {
    type: string
    sql: ${TABLE}.GERENCIA ;;
  }

  dimension: subdireccion {
    type: string
    sql: ${TABLE}.SUBDIRECCION ;;
  }

  dimension: causa_siniestro {
    type: string
    sql: ${TABLE}.CAUSA_SINIESTRO ;;
  }

  dimension: estatus {
    type: string
    sql: ${TABLE}.ESTATUS ;;
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

  dimension: siniestro {
    type: string
    sql: ${TABLE}.SINIESTRO ;;
  }

  dimension: responsabilidad {
    type: string
    sql: ${TABLE}.RESPONSABILIDAD ;;
  }

  dimension: apreciacion_responsabilidad {
    type: string
    sql: ${TABLE}.APRECIACION_RESPONSABILIDAD ;;
  }

  dimension: id_forma_liberacion_conductor{
    type: string
    sql: ${TABLE}.ID_FORMA_LIBERACION_CONDUCTOR ;;
  }
}
