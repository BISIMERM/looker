view: dim_pdd_pdt {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.DIM_PDD_PDT` ;;

# --- LLAVES SUBROGADAS ---

  dimension: sk_id_cruce {
    primary_key: yes
    hidden: yes
    type: string
    sql: TO_HEX(${TABLE}.SK_ID_CRUCE) ;;
  }

  dimension: sk_fec_pri_tra {
    hidden: yes
    type: string
    sql: TO_HEX(${TABLE}.SK_FEC_PRI_TRA) ;;
  }

  dimension: sk_fecha_pago {
    hidden: yes
    type: string
    sql: TO_HEX(${TABLE}.SK_FECHA_PAGO) ;;
  }

  dimension: sk_reporte {
    hidden: yes
    type: string
    sql: TO_HEX(${TABLE}.SK_REPORTE) ;;
  }

  # --- DIMENSIONES REGULARES ---

  dimension: id_cruce {
    label: "ID Cruce"
    type: string
    sql: ${TABLE}.ID_CRUCE ;;
  }

  dimension: reporte {
    label: "Reporte"
    type: string
    sql: ${TABLE}.REPORTE ;;
  }

  dimension: dias_habiles {
    label: "Días Hábiles"
    type: number
    sql: ${TABLE}.DIAS_HABILES ;;
  }

  dimension: cumple_dias {
    label: "Cumple Días"
    type: number
    sql: ${TABLE}.CUMPLE_DIAS ;;
  }

  # --- BANDERAS LÓGICAS (Yes/No) ---

  dimension: flg_pdd {
    label: "Es PDD"
    type: yesno
    sql: ${TABLE}.FLG_PDD = 1 ;;
  }

  dimension: flg_pdt {
    label: "Es PDT"
    type: yesno
    sql: ${TABLE}.FLG_PDT = 1 ;;
  }

  # --- FECHAS ---

  dimension_group: fec_pri_tra {
    label: "Fecha Primer Trámite"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FEC_PRI_TRA ;;
  }

  dimension_group: fecha_pago {
    label: "Fecha de Pago"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FECHA_PAGO ;;
  }

  # --- MÉTRICAS (Measures) ---

  measure: count {
    label: "Total de Registros"
    type: count
  }
}
