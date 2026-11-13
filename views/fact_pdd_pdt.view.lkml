view: fact_pdd_pdt {
  sql_table_name: `qlts-pro-mx-au-oro-ti.peoo.FACT_PDD_PDT` ;;

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

  dimension: cumple_dias {
    label: "Cumple Días"
    type: number
    sql: ${TABLE}.CUMPLE_DIAS ;;
  }

  dimension: dias_habiles {
    label: "Días Hábiles"
    type: number
    sql: ${TABLE}.DIAS_HABILES ;;
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

  # ==========================================
  # MÉTRICAS BASE GLOBALES
  # ==========================================

  measure: count {
    label: "Total de Registros"
    type: count
  }

  measure: total_dias_habiles {
    type: sum
    sql: ${TABLE}.DIAS_HABILES ;;
  }


  # ==========================================
  # SECCIÓN 1: PAGO TRADICIONAL (PDT)
  # ==========================================

  # 1. Volumen (Tradicional)
  measure: volumen_tradicional {
    label: "Volumen (Tradicional)"
    type: sum
    value_format_name: decimal_0
    sql: ${TABLE}.FLG_PDT ;;
  }

  # 2. Días desde 1° Trámite (Tradicional)
  measure: suma_dias_tradicional {
    type: sum
    sql: CASE WHEN ${TABLE}.FLG_PDT = 1 THEN ${TABLE}.DIAS_HABILES ELSE 0 END ;;
  }

  measure: dias_1er_tramite_tradicional {
    label: "Días desde 1° Trámite (Trad.)"
    type: number
    value_format_name: decimal_1
    sql: NULLIF(SAFE_DIVIDE(${suma_dias_tradicional}, ${volumen_tradicional}), 0) ;;
  }

  # 3. % Cumplimiento (Tradicional)
  measure: suma_cumplimiento_tradicional {
    type: sum
    sql: CASE WHEN ${TABLE}.FLG_PDT = 1 THEN ${TABLE}.CUMPLE_DIAS ELSE 0 END ;;
  }

  measure: pct_cumplimiento_tradicional {
    label: "% Cumplimiento (Trad.)"
    type: number
    value_format_name: percent_0
    sql: NULLIF(SAFE_DIVIDE(${suma_cumplimiento_tradicional}, ${volumen_tradicional}), 0) ;;
  }

  # ==========================================
  # SECCIÓN 2: PAGO DIGITAL (PDD)
  # ==========================================

  # 1. Volumen (Digital)
  measure: volumen_digital {
    label: "Volumen (Digital)"
    type: sum
    value_format_name: decimal_0
    sql: ${TABLE}.FLG_PDD ;;
  }

  # 2. Días desde 1° Trámite (Digital)
  measure: suma_dias_digital {
    type: sum
    hidden: yes
    sql: CASE WHEN ${TABLE}.FLG_PDD = 1 THEN ${TABLE}.DIAS_HABILES ELSE 0 END ;;
  }

  measure: dias_1er_tramite_digital {
    label: "Días desde 1° Trámite (Dig.)"
    type: number
    value_format_name: decimal_1
    sql: NULLIF(SAFE_DIVIDE(${suma_dias_digital}, ${volumen_digital}), 0) ;;
  }

  # 3. % Cumplimiento (Digital)
  measure: suma_cumplimiento_digital {
    type: sum
    hidden: yes
    sql: CASE WHEN ${TABLE}.FLG_PDD = 1 THEN ${TABLE}.CUMPLE_DIAS ELSE 0 END ;;
  }

  measure: pct_cumplimiento_digital {
    label: "% Cumplimiento (Dig.)"
    type: number
    value_format_name: percent_0
    sql: NULLIF(SAFE_DIVIDE(${suma_cumplimiento_digital}, ${volumen_digital}), 0) ;;
  }
}
