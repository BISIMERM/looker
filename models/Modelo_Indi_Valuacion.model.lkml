connection: "@{conexion}"

include: "@{ruta_views}"
include: "@{ruta_lookml_dashboards}"
# Define the database connection to be used for this model.
#connection: "bigquery-operaciones"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: Modelo_Valuacion_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: Modelo_Valuacion_default_datagroup

explore: fact_valuacion {
  label: "Explorar Modelo Valuación"
  description: "Información sobre Valuación"

  join: dim_valuacion {
    sql_on: ${fact_valuacion.sk_expediente} = ${dim_valuacion.sk_expediente} ;;
    relationship: one_to_one
    type: inner
  }

  join: dim_reporte {
    sql_on: ${fact_valuacion.sk_reporte} = ${dim_reporte.sk_reporte} ;;
    relationship: one_to_one
    type: left_outer
  }

  join: dim_estructura_comercial {
    sql_on: ${fact_valuacion.sk_reporte} = ${dim_estructura_comercial.sk_reporte} ;;
    relationship: one_to_one
    type: left_outer
  }

  join: dim_estructura_atencion {
    sql_on: ${fact_valuacion.sk_reporte} = ${dim_estructura_atencion.sk_reporte} ;;
    relationship: one_to_one
    type: left_outer
  }

  join: dim_tiempo {
    sql_on: ${fact_valuacion.sk_fecha_valuacion} = ${dim_tiempo.sk_fecha} ;;
    relationship: many_to_one
    type: inner
  }

  join: dim_fecha_reporte {
    from: dim_tiempo
    sql_on: ${fact_valuacion.sk_fecha_reporte} = ${dim_fecha_reporte.sk_fecha} ;;
    relationship: one_to_one
    type: left_outer
  }

  join: dim_fecha_ocurrido {
    from: dim_tiempo
    sql_on: ${fact_valuacion.sk_fecha_ocurrido} = ${dim_fecha_ocurrido.sk_fecha} ;;
    relationship: one_to_one
    type: left_outer
  }
}
