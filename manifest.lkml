
project_name: "Modelo_Encuestas_Test"

# --- CONSTANTES GLOBALES ---

constant: conexion {
  value: "bigquery-operaciones"
}

constant: ruta_views {
  value: "/views/*.view.lkml"
}

constant: ruta_lookml_dashboards {
  value: "/lookml_dashboards/**/*.dashboard.lookml"
}
