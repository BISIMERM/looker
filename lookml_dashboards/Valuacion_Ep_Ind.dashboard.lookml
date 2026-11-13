---
- dashboard: valuacion_ep
  title: Valuacion EP
  description: ''
  filters_bar_collapsed: true
  preferred_slug: bI88wO7Nm87c8TL2HD26xQ
  theme_name: ''
  layout_granularity: granular
  layout: newspaper
  tabs:
  - name: Encuesta de Servicio
    label: Encuesta de Servicio
  - name: Tiempo Valuación Pesados
    label: Tiempo Valuación Pesados
  - name: Tiempo reparación pesados agencia
    label: Tiempo reparación pesados agencia
  - name: Tiempo reparación pesados taller
    label: Tiempo reparación pesados taller
  - name: Cumplimiento fecha promesa
    label: Cumplimiento fecha promesa
  elements:
  - title: Encuesta
    name: Encuesta
    model: Modelo_Indi_Encuestas
    explore: fact_encuesta
    type: looker_line
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_encuesta.ps]
    filters:
      dim_encuesta.tipo_encuesta: '09 REPARACIÓN'
    sorts: [dim_tiempo.num_anio, dim_tiempo.num_mes]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: measure
      label: Conteo encuestas
      based_on: fact_encuesta.contador
      _kind_hint: measure
      measure: conteo_encuestas
      type: sum
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: looker_2026
      palette_id: looker_2026_categorical_1
      options:
        steps: 5
        reverse: false
        mirror: false
    hidden_fields: [dim_tiempo.num_mes]
    y_axes: [{gridlines: true, label: '', maxValue: !!null '', minValue: !!null '',
        orientation: left, series: [{axisId: fact_encuesta.ps, id: fact_encuesta.ps,
            name: PS}], showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: false
    hide_legend: false
    font_size: '23'
    series_colors:
      fact_encuesta.ps: "#a94698"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#009aa3"}]
    trend_lines: []
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      fact_encuesta.total_detractor:
        is_active: false
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: false
    table_show_headers: true
    header_font_bold: false
    header_font_italic: false
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: ''
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Año: dim_tiempo.num_anio
    row: 5
    col: 13
    width: 59
    height: 29
    tab_name: Encuesta de Servicio
  - title: Detalle
    name: Detalle
    model: Modelo_Indi_Encuestas
    explore: fact_encuesta
    type: looker_grid
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_encuesta.ps,
      fact_encuesta.total_contador]
    pivots: [dim_tiempo.num_anio]
    filters:
      dim_encuesta.tipo_encuesta: '09 REPARACIÓN'
    sorts: [dim_tiempo.num_anio, dim_tiempo.num_mes]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: measure
      label: Conteo encuestas
      based_on: fact_encuesta.contador
      _kind_hint: measure
      measure: conteo_encuestas
      type: sum
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '23'
    rows_font_size: '23'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    modern2026: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      dim_tiempo.num_anio: Año
      dim_tiempo.desc_mes: Mes
    series_column_widths:
      dim_tiempo.desc_mes: 79
      2026_fact_encuesta.ps: 75
      2026_fact_encuesta.total_contador: 155
    series_cell_visualizations:
      fact_encuesta.total_detractor:
        is_active: false
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: true
    table_show_headers: true
    header_font_color: "#ffffff"
    header_background_color: "#009aa3"
    header_font_bold: false
    header_font_italic: false
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: center
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots:
      '2025':
        is_entire_pivot_hidden: true
    defaults_version: 1
    hidden_fields: [dim_tiempo.num_mes]
    listen:
      Año: dim_tiempo.num_anio
    row: 5
    col: 0
    width: 13
    height: 29
    tab_name: Encuesta de Servicio
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 5px; bottom: 5px; left: 5px; right: 5px; display: flex; justify-content: center; align-items: center;">
        <img src="https://www.qualitas.com.mx/documents/19189400/19781967/Qualitas-horizontal.png/692ae411-2d86-ae6b-461d-625b0bfd9472?t=1774680700783" style="max-width: 20%; max-height: 20%; object-fit: contain;" />
      </div>
    row: 0
    col: 0
    width: 36
    height: 5
    tab_name: Encuesta de Servicio
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; display: flex; justify-content: center; align-items: center;">
        <table style="width: 80%; border-collapse: collapse; font-family: Roboto, sans-serif; font-size: 16px;">
          <tr style="background-color: #008798; color: white;">
            <th style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">indicador</th>
            <th style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">Meta</th>
          </tr>
          <tr>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">Valuación</td>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 18px; color: #008798;">85%</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Encuesta de Servicio
  - title: Detalle Agencia
    name: Detalle Agencia
    model: Modelo_Indi_Valuacion
    explore: fact_valuacion
    type: looker_grid
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_valuacion.promedio_tiempo_valuacion,
      fact_valuacion.pct_cump]
    pivots: [dim_tiempo.num_anio]
    filters:
      dim_valuacion.proveedor: AGENCIA EQUIPO PESADO
      dim_tiempo.fch_fecha_date: after 2025/01/01
    sorts: [dim_tiempo.num_anio, dim_tiempo.num_mes]
    limit: 500
    column_limit: 50
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '23'
    rows_font_size: '23'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    modern2026: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      dim_tiempo.num_anio: Año
      dim_tiempo.desc_mes: Mes
    series_column_widths:
      dim_tiempo.desc_mes: 79
      2025_fact_valuacion.promedio_tiempo_valuacion: 180
      2025_fact_valuacion.pct_cump: 101
      2026_fact_valuacion.promedio_tiempo_valuacion: 180
      2026_fact_valuacion.pct_cump: 101
    series_cell_visualizations:
      fact_valuacion.promedio_tiempo_valuacion:
        is_active: false
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: true
    table_show_headers: true
    header_font_color: "#ffffff"
    header_background_color: "#009aa3"
    header_font_bold: false
    header_font_italic: false
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: center
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    series_value_format:
      fact_valuacion.pct_cump: "#,##0%"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [dim_tiempo.num_mes]
    hidden_pivots: {}
    listen:
      Año: dim_tiempo.num_anio
    row: 5
    col: 0
    width: 27
    height: 29
    tab_name: Tiempo Valuación Pesados
  - title: Valuación Agencia Pesados
    name: Valuación Agencia Pesados
    model: Modelo_Indi_Valuacion
    explore: fact_valuacion
    type: looker_line
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_valuacion.promedio_tiempo_valuacion]
    filters:
      dim_tiempo.fch_fecha_year: after 2025/01/01
      dim_valuacion.proveedor: AGENCIA EQUIPO PESADO
    sorts: [dim_tiempo.num_anio, dim_tiempo.num_mes]
    limit: 500
    column_limit: 50
    total: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: looker_2026
      palette_id: looker_2026_categorical_1
      options:
        steps: 5
        reverse: false
        mirror: false
    hidden_fields: [dim_tiempo.num_mes]
    y_axes: [{gridlines: true, label: '', maxValue: !!null '', minValue: !!null '',
        orientation: left, series: [{axisId: fact_valuacion.promedio_tiempo_valuacion,
            id: fact_valuacion.promedio_tiempo_valuacion, name: Tiempo Promedio}],
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_valuacion.promedio_tiempo_valuacion: "#a94698"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#009aa3"}]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      fact_valuacion.promedio_tiempo_valuacion:
        is_active: false
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: false
    table_show_headers: true
    header_font_bold: false
    header_font_italic: false
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: ''
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Año: dim_tiempo.num_anio
    row: 5
    col: 27
    width: 45
    height: 29
    tab_name: Tiempo Valuación Pesados
  - title: Detalle Taller
    name: Detalle Taller
    model: Modelo_Indi_Valuacion
    explore: fact_valuacion
    type: looker_grid
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_valuacion.promedio_tiempo_valuacion,
      fact_valuacion.pct_cump]
    pivots: [dim_tiempo.num_anio]
    filters:
      dim_tiempo.fch_fecha_year: after 2025/01/01
      dim_valuacion.proveedor: TALLER EQUIPO PESADO
    sorts: [dim_tiempo.num_anio, dim_tiempo.num_mes]
    limit: 500
    column_limit: 50
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '23'
    rows_font_size: '23'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    modern2026: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      dim_tiempo.num_anio: Año
      dim_tiempo.desc_mes: Mes
    series_column_widths:
      dim_tiempo.desc_mes: 79
      2025_fact_valuacion.promedio_tiempo_valuacion: 180
      2025_fact_valuacion.pct_cump: 101
      2026_fact_valuacion.promedio_tiempo_valuacion: 180
      2026_fact_valuacion.pct_cump: 101
    series_cell_visualizations:
      fact_valuacion.promedio_tiempo_valuacion:
        is_active: false
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: true
    table_show_headers: true
    header_font_color: "#ffffff"
    header_background_color: "#009aa3"
    header_font_bold: false
    header_font_italic: false
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: center
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    series_value_format:
      fact_valuacion.pct_cump: "#,##0%"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [dim_tiempo.num_mes]
    hidden_pivots: {}
    listen:
      Año: dim_tiempo.num_anio
    row: 34
    col: 0
    width: 27
    height: 29
    tab_name: Tiempo Valuación Pesados
  - title: Valuación Taller Pesados
    name: Valuación Taller Pesados
    model: Modelo_Indi_Valuacion
    explore: fact_valuacion
    type: looker_line
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_valuacion.promedio_tiempo_valuacion]
    filters:
      dim_tiempo.fch_fecha_year: after 2025/01/01
      dim_valuacion.proveedor: TALLER EQUIPO PESADO
    sorts: [dim_tiempo.num_anio, dim_tiempo.num_mes]
    limit: 500
    column_limit: 50
    total: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: looker_2026
      palette_id: looker_2026_categorical_1
      options:
        steps: 5
        reverse: false
        mirror: false
    hidden_fields: [dim_tiempo.num_mes]
    y_axes: [{gridlines: true, label: '', maxValue: !!null '', minValue: !!null '',
        orientation: left, series: [{axisId: fact_valuacion.promedio_tiempo_valuacion,
            id: fact_valuacion.promedio_tiempo_valuacion, name: Tiempo Promedio}],
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_valuacion.promedio_tiempo_valuacion: "#a94698"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#009aa3"}]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      fact_valuacion.promedio_tiempo_valuacion:
        is_active: false
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: false
    table_show_headers: true
    header_font_bold: false
    header_font_italic: false
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: ''
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Año: dim_tiempo.num_anio
    row: 34
    col: 27
    width: 45
    height: 29
    tab_name: Tiempo Valuación Pesados
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 5px; bottom: 5px; left: 5px; right: 5px; display: flex; justify-content: center; align-items: center;">
        <img src="https://www.qualitas.com.mx/documents/19189400/19781967/Qualitas-horizontal.png/692ae411-2d86-ae6b-461d-625b0bfd9472?t=1774680700783" style="max-width: 20%; max-height: 20%; object-fit: contain;" />
      </div>
    row: 0
    col: 0
    width: 36
    height: 5
    tab_name: Tiempo Valuación Pesados
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; display: flex; justify-content: center; align-items: center;">
        <table style="width: 80%; border-collapse: collapse; font-family: Roboto, sans-serif; font-size: 16px;">
          <tr style="background-color: #008798; color: white;">
            <th style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">indicador</th>
            <th style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">Meta</th>
          </tr>
          <tr>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">Tiempo valuación pesados</td>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 18px; color: #008798;">96:00:00</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Tiempo Valuación Pesados
  - title: Tiempo reparación pesados agencia
    name: Tiempo reparación pesados agencia
    model: Modelo_Indi_Promesa
    explore: fact_promesa
    type: looker_line
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_promesa.tiempo_de_reparacion_habiles]
    filters:
      fact_promesa.tipotaller: EP Agencia
      dim_tiempo.fch_fecha_year: after 2025/10/01
      dim_promesa.ep: '1'
    sorts: [dim_tiempo.num_anio, dim_tiempo.num_mes]
    limit: 500
    column_limit: 50
    total: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: looker_2026
      palette_id: looker_2026_categorical_1
      options:
        steps: 5
        reverse: false
        mirror: false
    hidden_fields: [dim_tiempo.num_mes]
    y_axes: [{gridlines: true, label: '', maxValue: !!null '', minValue: !!null '',
        orientation: left, series: [{axisId: fact_promesa.pct_reportes_en_meta, id: fact_promesa.pct_reportes_en_meta,
            name: "% Reportes en meta"}], showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_promesa.pct_reportes_en_meta: "#a94698"
      fact_promesa.tiempo_de_reparacion_habiles: "#a94698"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#009aa3"}]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      fact_promesa.tiempo_de_reparacion:
        is_active: false
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: false
    table_show_headers: true
    header_font_bold: false
    header_font_italic: false
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: ''
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    listen:
      Año: dim_tiempo.num_anio
    row: 36
    col: 0
    width: 72
    height: 13
    tab_name: Tiempo reparación pesados agencia
  - title: Detalle
    name: Detalle (2)
    model: Modelo_Indi_Promesa
    explore: fact_promesa
    type: looker_grid
    fields: [dim_tiempo.num_anio, dim_tiempo.desc_mes, dim_tiempo.num_mes, fact_promesa.tiempo_de_reparacion_habiles,
      fact_promesa.reportes_en_meta_ep, fact_promesa.hasta_35_dias, fact_promesa.pct_hasta_35_dias,
      fact_promesa.entre_35_1_y_55_dias, fact_promesa.pct_entre_35_y_55_dias, fact_promesa.entre_55_1_y_90_dias,
      fact_promesa.pct_entre_55_y_90_dias, fact_promesa.mayor_90_dias, fact_promesa.pct_mayor_90_dias]
    pivots: [dim_tiempo.num_anio]
    filters:
      fact_promesa.tipotaller: EP Agencia
      dim_tiempo.fch_fecha_year: after 2025/01/01
      dim_promesa.ep: '1'
    sorts: [dim_tiempo.num_anio, dim_tiempo.num_mes]
    limit: 500
    column_limit: 50
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '23'
    rows_font_size: '23'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    modern2026: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      dim_tiempo.num_anio: Año
      dim_tiempo.desc_mes: Mes
    series_cell_visualizations:
      fact_promesa.tiempo_de_reparacion:
        is_active: false
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: false
    table_show_headers: true
    header_font_color: "#ffffff"
    header_background_color: "#009aa3"
    header_font_bold: false
    header_font_italic: false
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: center
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    defaults_version: 1
    hidden_pivots:
      '2025':
        measure_names:
        - fact_promesa.hasta_35_dias
        - fact_promesa.pct_hasta_35_dias
        - fact_promesa.entre_35_1_y_55_dias
        - fact_promesa.pct_entre_35_y_55_dias
        - fact_promesa.entre_55_1_y_90_dias
        - fact_promesa.pct_entre_55_y_90_dias
        - fact_promesa.mayor_90_dias
        - fact_promesa.pct_mayor_90_dias
    hidden_fields: [dim_tiempo.num_mes]
    listen:
      Año: dim_tiempo.num_anio
    row: 5
    col: 0
    width: 72
    height: 31
    tab_name: Tiempo reparación pesados agencia
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 5px; bottom: 5px; left: 5px; right: 5px; display: flex; justify-content: center; align-items: center;">
        <img src="https://www.qualitas.com.mx/documents/19189400/19781967/Qualitas-horizontal.png/692ae411-2d86-ae6b-461d-625b0bfd9472?t=1774680700783" style="max-width: 20%; max-height: 20%; object-fit: contain;" />
      </div>
    row: 0
    col: 0
    width: 36
    height: 5
    tab_name: Tiempo reparación pesados agencia
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; display: flex; justify-content: center; align-items: center;">
        <table style="width: 80%; border-collapse: collapse; font-family: Roboto, sans-serif; font-size: 16px;">
          <tr style="background-color: #008798; color: white;">
            <th style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">indicador</th>
            <th style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">Meta</th>
          </tr>
          <tr>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">Tiempo reparación pesados agencia</td>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 18px; color: #008798;">31.5</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Tiempo reparación pesados agencia
  - title: Tiempo reparación pesados taller
    name: Tiempo reparación pesados taller
    model: Modelo_Indi_Promesa
    explore: fact_promesa
    type: looker_line
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_promesa.tiempo_de_reparacion_habiles]
    filters:
      fact_promesa.tipotaller: EP Taller
      dim_tiempo.fch_fecha_year: after 2025/01/01
      dim_promesa.ep: '1'
    sorts: [dim_tiempo.num_anio, dim_tiempo.num_mes]
    limit: 500
    column_limit: 50
    total: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: looker_2026
      palette_id: looker_2026_categorical_1
      options:
        steps: 5
        reverse: false
        mirror: false
    hidden_fields: [dim_tiempo.num_mes]
    y_axes: [{gridlines: true, label: '', maxValue: !!null '', minValue: !!null '',
        orientation: left, series: [{axisId: fact_promesa.pct_reportes_en_meta, id: fact_promesa.pct_reportes_en_meta,
            name: "% Reportes en meta"}], showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_promesa.pct_reportes_en_meta: "#a94698"
      fact_promesa.tiempo_de_reparacion_habiles: "#a94698"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#009aa3"}]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      fact_promesa.tiempo_de_reparacion:
        is_active: false
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: false
    table_show_headers: true
    header_font_bold: false
    header_font_italic: false
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: ''
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    listen:
      Año: dim_tiempo.num_anio
    row: 35
    col: 0
    width: 72
    height: 14
    tab_name: Tiempo reparación pesados taller
  - name: " (7)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 5px; bottom: 5px; left: 5px; right: 5px; display: flex; justify-content: center; align-items: center;">
        <img src="https://www.qualitas.com.mx/documents/19189400/19781967/Qualitas-horizontal.png/692ae411-2d86-ae6b-461d-625b0bfd9472?t=1774680700783" style="max-width: 20%; max-height: 20%; object-fit: contain;" />
      </div>
    row: 0
    col: 0
    width: 36
    height: 5
    tab_name: Tiempo reparación pesados taller
  - title: Detalle
    name: Detalle (3)
    model: Modelo_Indi_Promesa
    explore: fact_promesa
    type: looker_grid
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_promesa.tiempo_de_reparacion_habiles,
      fact_promesa.reportes_en_meta_ep, fact_promesa.hasta_35_dias, fact_promesa.pct_hasta_35_dias,
      fact_promesa.entre_35_1_y_55_dias, fact_promesa.pct_entre_35_y_55_dias, fact_promesa.entre_55_1_y_90_dias,
      fact_promesa.pct_entre_55_y_90_dias, fact_promesa.mayor_90_dias, fact_promesa.pct_mayor_90_dias]
    pivots: [dim_tiempo.num_anio]
    filters:
      fact_promesa.tipotaller: EP Taller
      dim_tiempo.fch_fecha_year: after 2025/01/01
      dim_promesa.ep: '1'
    sorts: [dim_tiempo.num_anio, dim_tiempo.num_mes]
    limit: 500
    column_limit: 50
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '23'
    rows_font_size: '23'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    modern2026: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      dim_tiempo.num_anio: Año
      dim_tiempo.desc_mes: Mes
    series_cell_visualizations:
      fact_promesa.tiempo_de_reparacion:
        is_active: false
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: true
    table_show_headers: true
    header_font_color: "#ffffff"
    header_background_color: "#009aa3"
    header_font_bold: false
    header_font_italic: false
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: center
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    series_value_format:
      fact_promesa.pct_hasta_35_dias: "#,##0%"
      fact_promesa.pct_entre_35_y_55_dias: "#,##0%"
      fact_promesa.pct_entre_55_y_90_dias: "#,##0%"
      fact_promesa.pct_mayor_90_dias: "#,##0%"
    defaults_version: 1
    hidden_pivots:
      '2025':
        measure_names:
        - fact_promesa.hasta_35_dias
        - fact_promesa.pct_hasta_35_dias
        - fact_promesa.entre_35_1_y_55_dias
        - fact_promesa.pct_entre_35_y_55_dias
        - fact_promesa.entre_55_1_y_90_dias
        - fact_promesa.pct_entre_55_y_90_dias
        - fact_promesa.mayor_90_dias
        - fact_promesa.pct_mayor_90_dias
    hidden_fields: [dim_tiempo.num_mes]
    listen:
      Año: dim_tiempo.num_anio
    row: 5
    col: 0
    width: 72
    height: 30
    tab_name: Tiempo reparación pesados taller
  - name: " (8)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; display: flex; justify-content: center; align-items: center;">
        <table style="width: 80%; border-collapse: collapse; font-family: Roboto, sans-serif; font-size: 16px;">
          <tr style="background-color: #008798; color: white;">
            <th style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">indicador</th>
            <th style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">Meta</th>
          </tr>
          <tr>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">Tiempo reparación pesados taller</td>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 18px; color: #008798;">31.5</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Tiempo reparación pesados taller
  - title: Detalle
    name: Detalle (4)
    model: Modelo_Indi_Promesa
    explore: fact_promesa
    type: looker_grid
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_promesa.pct_entrega_fecha_promesa_autos]
    pivots: [dim_tiempo.num_anio]
    filters:
      fact_promesa.tipotaller: EP Agencia,EP Taller
      dim_tiempo.fch_fecha_year: after 2025/01/01
      dim_promesa.ep: '1'
    sorts: [dim_tiempo.num_anio, dim_tiempo.num_mes]
    limit: 500
    column_limit: 50
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '23'
    rows_font_size: '23'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    modern2026: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      fact_promesa.pct_entrega_fecha_promesa_autos: Entrega Fecha Promesa
      dim_tiempo.num_anio: Año
      dim_tiempo.desc_mes: Mes
    series_column_widths:
      dim_tiempo.desc_mes: 79
      2025_fact_promesa.pct_entrega_fecha_promesa_autos: 228
      2026_fact_promesa.pct_entrega_fecha_promesa_autos: 228
    series_cell_visualizations:
      fact_promesa.tiempo_de_reparacion:
        is_active: false
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: true
    table_show_headers: true
    header_font_color: "#ffffff"
    header_background_color: "#009aa3"
    header_font_bold: false
    header_font_italic: false
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: center
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    series_value_format:
      fact_promesa.pct_entrega_fecha_promesa_autos: "#,##0%"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [dim_tiempo.num_mes]
    listen:
      Año: dim_tiempo.num_anio
    row: 5
    col: 0
    width: 22
    height: 29
    tab_name: Cumplimiento fecha promesa
  - title: Entrega Fecha Promesa Pesados
    name: Entrega Fecha Promesa Pesados
    model: Modelo_Indi_Promesa
    explore: fact_promesa
    type: looker_line
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_promesa.pct_entrega_fecha_promesa_autos]
    filters:
      fact_promesa.tipotaller: EP Agencia,EP Taller
      dim_tiempo.fch_fecha_year: after 2025/01/01
      dim_promesa.ep: '1'
    sorts: [dim_tiempo.num_anio, dim_tiempo.num_mes]
    limit: 500
    column_limit: 50
    total: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: looker_2026
      palette_id: looker_2026_categorical_1
      options:
        steps: 5
        reverse: false
        mirror: false
    hidden_fields: [dim_tiempo.num_mes]
    y_axes: [{gridlines: true, label: '', maxValue: !!null '', minValue: !!null '',
        orientation: left, series: [{axisId: fact_promesa.pct_entrega_fecha_promesa_autos,
            id: fact_promesa.pct_entrega_fecha_promesa_autos, name: "% Entrega Fecha\
              \ Promesa Autos"}], showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_promesa.pct_entrega_fecha_promesa_autos: "#a94698"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#009aa3"}]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      fact_promesa.tiempo_de_reparacion:
        is_active: false
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: false
    table_show_headers: true
    header_font_bold: false
    header_font_italic: false
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: ''
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Año: dim_tiempo.num_anio
    row: 5
    col: 22
    width: 50
    height: 29
    tab_name: Cumplimiento fecha promesa
  - name: " (9)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 5px; bottom: 5px; left: 5px; right: 5px; display: flex; justify-content: center; align-items: center;">
        <img src="https://www.qualitas.com.mx/documents/19189400/19781967/Qualitas-horizontal.png/692ae411-2d86-ae6b-461d-625b0bfd9472?t=1774680700783" style="max-width: 20%; max-height: 20%; object-fit: contain;" />
      </div>
    row: 0
    col: 0
    width: 36
    height: 5
    tab_name: Cumplimiento fecha promesa
  - name: " (10)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; display: flex; justify-content: center; align-items: center;">
        <table style="width: 80%; border-collapse: collapse; font-family: Roboto, sans-serif; font-size: 16px;">
          <tr style="background-color: #008798; color: white;">
            <th style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">indicador</th>
            <th style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">Meta</th>
          </tr>
          <tr>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">Pesados cumplimiento fecha promesa entrega</td>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 18px; color: #008798;">80%</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Cumplimiento fecha promesa
  filters:
  - name: Año
    title: Año
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options:
      - '2025'
      - '2026'
    model: Modelo_Indi_Encuestas
    explore: fact_encuesta
    listens_to_filters: []
    field: dim_tiempo.num_anio
