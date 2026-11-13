view: dim_dd {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.DIM_DD` ;;

  # ==========================================
  # LLAVES SUBROGADAS (Ocultas para Joins)
  # ==========================================

  # Corregido: SK_LLAVE existe en BQ en lugar de SK_TRAMITE
  dimension: sk_llave {
    primary_key: yes
    type: string
    sql: TO_HEX(${TABLE}.SK_LLAVE) ;;
    hidden: yes
  }

  dimension: sk_reporte {
    type: string
    sql: TO_HEX(${TABLE}.SK_REPORTE) ;;
    hidden: yes
  }

  # ==========================================
  # DIMENSIONES REGULARES
  # ==========================================

  # Corregido: LLAVE existe en BQ en lugar de TRAMITE
  dimension: llave {
    label: "Llave"
    type: string
    sql: ${TABLE}.LLAVE ;;
  }

  dimension: reporte {
    label: "Reporte"
    type: string
    sql: ${TABLE}.REPORTE ;;
  }

  dimension: cobertura {
    label: "Cobertura"
    type: string
    sql: ${TABLE}.COBERTURA ;;
  }

  dimension: desc_cobertura {
    label: "Descripción de Cobertura"
    type: string
    sql: ${TABLE}.DESC_COBERTURA ;;
  }

  dimension: estatus {
    label: "Estatus"
    type: string
    sql: ${TABLE}.ESTATUS ;;
  }
}
