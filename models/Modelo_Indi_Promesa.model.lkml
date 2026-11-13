connection: "@{conexion}"
include: "@{ruta_views}"
include: "@{ruta_lookml_dashboards}"
# Define the database connection to be used for this model.
#connection: "bigquery-operaciones"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: Modelo_Promesa_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: Modelo_Promesa_default_datagroup

explore: fact_promesa {
  label: "Explorar Modelo Promesa"
  description: "Información sobre Promesa"

  join: dim_promesa {
    #sql_on: CAST(${fact_promesa.sk_expediente} AS BYTES) = CAST(${dim_promesa.sk_expediente} AS BYTES) ;;
    sql_on: ${fact_promesa.sk_expediente} = ${dim_promesa.sk_expediente} ;;
    type: inner
    relationship: many_to_one
  }

  join: dim_reporte {
    sql_on: ${fact_promesa.sk_reporte} = ${dim_reporte.sk_reporte} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: dim_estructura_comercial {
    sql_on: ${fact_promesa.sk_reporte} = ${dim_estructura_comercial.sk_reporte} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: dim_estructura_atencion {
    sql_on: ${fact_promesa.sk_reporte} = ${dim_estructura_atencion.sk_reporte} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: dim_tiempo {
    sql_on: ${fact_promesa.sk_fecha_terminado} = ${dim_tiempo.sk_fecha} ;;
    relationship: many_to_one
    type: inner
  }
}
