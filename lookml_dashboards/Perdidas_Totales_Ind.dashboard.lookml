---
- dashboard: perdidas_totales
  title: Perdidas Totales
  description: ''
  filters_bar_collapsed: true
  preferred_slug: yVsGmwDDpDlIQgM4sszxDt
  theme_name: ''
  layout_granularity: granular
  layout: newspaper
  tabs:
  - name: Perdidas Totales
    label: Perdidas Totales
  - name: Dias de Pago DM
    label: Dias de Pago DM
  - name: Dias de Pago RT
    label: Dias de Pago RT
  - name: Dias de pago desde el decreto DM y RT
    label: Dias de pago desde el decreto DM y RT
  - name: Tiempos de revision DM y RT
    label: Tiempos de revision DM y RT
  - name: Tiempo integral de pago DM y RT
    label: Tiempo integral de pago DM y RT
  elements:
  - title: Detalle
    name: Detalle
    model: Modelo_Indi_Encuestas
    explore: fact_encuesta
    type: looker_grid
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_encuesta.total_contador,
      fact_encuesta.ps]
    pivots: [dim_tiempo.num_anio]
    filters:
      dim_encuesta.tipo_encuesta: 10 INDEMNIZACION PT,10 Indemnización PT appweb
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
      dim_tiempo.num_mes: Mes
      dim_tiempo.desc_mes: Mes
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
    width: 18
    height: 29
    tab_name: Perdidas Totales
  - title: Encuesta
    name: Encuesta
    model: Modelo_Indi_Encuestas
    explore: fact_encuesta
    type: looker_line
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_encuesta.ps]
    filters:
      dim_encuesta.tipo_encuesta: 10 INDEMNIZACION PT,10 Indemnización PT appweb
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
    col: 18
    width: 54
    height: 29
    tab_name: Perdidas Totales
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
    tab_name: Perdidas Totales
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
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">Pérdidas totales</td>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 18px; color: #008798;">93%</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Perdidas Totales
  - title: Rangos fuera de meta
    name: Rangos fuera de meta
    model: Modelo_Indi_Dd
    explore: fact_dd
    type: looker_grid
    fields: [dim_fecha_pago.desc_mes, dim_fecha_pago.num_mes, fact_dd.pts_pagadas,
      fact_dd.promedio_dias_pago, fact_dd.pct_rango_dentro_meta, fact_dd.vol_entre_0_3_dias,
      fact_dd.pct_entre_0_3_dias, fact_dd.vol_entre_3_4_dias, fact_dd.pct_entre_3_4_dias,
      fact_dd.vol_mayor_5_dias, fact_dd.pct_mayor_5_dias, dim_fecha_pago.num_anio]
    pivots: [dim_fecha_pago.num_anio]
    filters:
      fact_dd.classptrobo: DM/PTS
    sorts: [dim_fecha_pago.num_anio, dim_fecha_pago.num_mes]
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
      dim_fecha_pago.num_anio: Año
      dim_fecha_pago.desc_mes: Mes
      fact_dd.pct_rango_dentro_meta: Rango dentro de meta
      fact_dd.pct_entre_0_3_dias: "%"
      fact_dd.pct_entre_3_4_dias: "%"
      fact_dd.pct_mayor_5_dias: "%"
    series_cell_visualizations:
      fact_dd.promedio_dias_pago:
        is_active: false
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: true
    table_show_headers: true
    header_font_color: "#f9f9f9"
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
    defaults_version: 1
    hidden_fields: [dim_fecha_pago.num_mes]
    hidden_pivots:
      '2025':
        measure_names:
        - fact_dd.pts_pagadas
        - fact_dd.vol_entre_0_3_dias
        - fact_dd.pct_entre_0_3_dias
        - fact_dd.vol_entre_3_4_dias
        - fact_dd.pct_entre_3_4_dias
        - fact_dd.vol_mayor_5_dias
        - fact_dd.pct_mayor_5_dias
    listen:
      Año: dim_fecha_pago.num_anio
    row: 5
    col: 0
    width: 72
    height: 30
    tab_name: Dias de Pago DM
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
    tab_name: Dias de Pago DM
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; display: flex; justify-content: center; align-items: center;">
        <table style="width: 85%; border-collapse: collapse; font-family: Roboto, sans-serif; font-size: 13px;">
          <tr style="background-color: #008798; color: white;">
            <th style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center;">indicador</th>
            <th style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center;">Meta</th>
          </tr>
          <tr>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: left;">Días de pago DM</td>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 15px; color: #008798;">3</td>
          </tr>
          <tr>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: left;">% cumplimiento de pago &lt;3 días</td>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 15px; color: #008798;">92%</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Dias de Pago DM
  - title: Rangos fuera de meta
    name: Rangos fuera de meta (2)
    model: Modelo_Indi_Dd
    explore: fact_dd
    type: looker_grid
    fields: [dim_fecha_pago.desc_mes, dim_fecha_pago.num_mes, fact_dd.pts_pagadas,
      fact_dd.promedio_dias_pago, fact_dd.pct_rango_dentro_meta, fact_dd.vol_entre_0_3_dias,
      fact_dd.pct_entre_0_3_dias, fact_dd.vol_entre_3_4_dias, fact_dd.pct_entre_3_4_dias,
      fact_dd.vol_mayor_5_dias, fact_dd.pct_mayor_5_dias, dim_fecha_pago.num_anio]
    pivots: [dim_fecha_pago.num_anio]
    filters:
      fact_dd.classptrobo: ROBO
    sorts: [dim_fecha_pago.num_anio, dim_fecha_pago.num_mes]
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
      dim_fecha_pago.num_anio: Año
      dim_fecha_pago.desc_mes: Mes
      fact_dd.pct_rango_dentro_meta: Rango dentro de meta
      fact_dd.pct_entre_0_3_dias: "%"
      fact_dd.pct_entre_3_4_dias: "%"
      fact_dd.pct_mayor_5_dias: "%"
    series_cell_visualizations:
      fact_dd.promedio_dias_pago:
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
    defaults_version: 1
    hidden_fields: [dim_fecha_pago.num_mes]
    hidden_pivots:
      '2025':
        measure_names:
        - fact_dd.pts_pagadas
        - fact_dd.vol_entre_0_3_dias
        - fact_dd.pct_entre_0_3_dias
        - fact_dd.vol_entre_3_4_dias
        - fact_dd.pct_entre_3_4_dias
        - fact_dd.vol_mayor_5_dias
        - fact_dd.pct_mayor_5_dias
    listen:
      Año: dim_fecha_pago.num_anio
    row: 5
    col: 0
    width: 72
    height: 30
    tab_name: Dias de Pago RT
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 5px; bottom: 5px; left: 5px; right: 5px; display: flex; justify-content: center; align-items: center;">
        <img src="https://www.qualitas.com.mx/documents/19189400/19781967/Qualitas-horizontal.png/692ae411-2d86-ae6b-461d-625b0bfd9472?t=1774680700783" style="max-width: 20%; max-height: 10%; object-fit: contain;" />
      </div>
    row: 0
    col: 0
    width: 36
    height: 5
    tab_name: Dias de Pago RT
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; display: flex; justify-content: center; align-items: center;">
        <table style="width: 85%; border-collapse: collapse; font-family: Roboto, sans-serif; font-size: 12px;">
          <tr style="background-color: #008798; color: white;">
            <th style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center;">indicador</th>
            <th style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center;">Meta</th>
          </tr>
          <tr>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: left;">Días de pago RT</td>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 15px; color: #008798;">3</td>
          </tr>
          <tr>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: left;">% cumplimiento de pago &lt;3 días</td>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 15px; color: #008798;">92%</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Dias de Pago RT
  - title: Dias de decreto total PTs
    name: Dias de decreto total PTs
    model: Modelo_Indi_Dd
    explore: fact_dd
    type: looker_grid
    fields: [fact_dd.promedio_dias_decreto, dim_fecha_pago.num_anio, dim_fecha_pago.desc_mes,
      dim_fecha_pago.num_mes]
    pivots: [dim_fecha_pago.num_anio]
    filters:
      fact_dd.classptrobo: DM/PTS
    sorts: [dim_fecha_pago.num_anio, dim_fecha_pago.num_mes]
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
      dim_fecha_pago.num_anio: Año
      dim_fecha_pago.desc_mes: Mes
      fact_dd.promedio_dias_decreto: Dias desde Decreto
    series_cell_visualizations:
      fact_dd.promedio_dias_pago:
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
    defaults_version: 1
    hidden_fields: [dim_fecha_pago.num_mes]
    hidden_pivots: {}
    listen:
      Año: dim_fecha_pago.num_anio
    row: 5
    col: 0
    width: 25
    height: 29
    tab_name: Dias de pago desde el decreto DM y RT
  - title: Dias de decreto total robos
    name: Dias de decreto total robos
    model: Modelo_Indi_Dd
    explore: fact_dd
    type: looker_grid
    fields: [fact_dd.promedio_dias_decreto, dim_fecha_pago.num_anio, dim_fecha_pago.desc_mes,
      dim_fecha_pago.num_mes]
    pivots: [dim_fecha_pago.num_anio]
    filters:
      fact_dd.classptrobo: ROBO
    sorts: [dim_fecha_pago.num_anio, dim_fecha_pago.num_mes]
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
      dim_fecha_pago.num_anio: Año
      dim_fecha_pago.desc_mes: Mes
      fact_dd.promedio_dias_decreto: Dias desde Decreto
    series_cell_visualizations:
      fact_dd.promedio_dias_pago:
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
    defaults_version: 1
    hidden_fields: [dim_fecha_pago.num_mes]
    hidden_pivots: {}
    listen:
      Año: dim_fecha_pago.num_anio
    row: 34
    col: 0
    width: 25
    height: 29
    tab_name: Dias de pago desde el decreto DM y RT
  - title: Dias de decreto total PTs
    name: Dias de decreto total PTs (2)
    model: Modelo_Indi_Dd
    explore: fact_dd
    type: looker_line
    fields: [fact_dd.promedio_dias_decreto, dim_fecha_pago.num_anio, dim_fecha_pago.desc_mes,
      dim_fecha_pago.num_mes]
    filters:
      fact_dd.classptrobo: DM/PTS
    sorts: [dim_fecha_pago.num_anio, dim_fecha_pago.num_mes]
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
    hidden_fields: [dim_fecha_pago.num_mes]
    y_axes: [{gridlines: true, label: '', orientation: left, series: [{axisId: fact_dd.promedio_dias_decreto,
            id: fact_dd.promedio_dias_decreto, name: Días desde Decreto Promedio}],
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_dd.promedio_dias_decreto: "#a94698"
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
      fact_dd.promedio_dias_pago:
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
    listen:
      Año: dim_fecha_pago.num_anio
    row: 5
    col: 25
    width: 47
    height: 29
    tab_name: Dias de pago desde el decreto DM y RT
  - title: Dias de decreto total robos
    name: Dias de decreto total robos (2)
    model: Modelo_Indi_Dd
    explore: fact_dd
    type: looker_line
    fields: [fact_dd.promedio_dias_decreto, dim_fecha_pago.num_anio, dim_fecha_pago.desc_mes,
      dim_fecha_pago.num_mes]
    filters:
      fact_dd.classptrobo: ROBO
    sorts: [dim_fecha_pago.num_anio, dim_fecha_pago.num_mes]
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
    hidden_fields: [dim_fecha_pago.num_mes]
    y_axes: [{gridlines: true, label: '', orientation: left, series: [{axisId: fact_dd.promedio_dias_decreto,
            id: fact_dd.promedio_dias_decreto, name: Días desde Decreto Promedio}],
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_dd.promedio_dias_decreto: "#a94698"
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
      fact_dd.promedio_dias_pago:
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
    listen:
      Año: dim_fecha_pago.num_anio
    row: 34
    col: 25
    width: 47
    height: 29
    tab_name: Dias de pago desde el decreto DM y RT
  - name: " (7)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 5px; bottom: 5px; left: 5px; right: 5px; display: flex; justify-content: center; align-items: center;">
        <img src="https://www.qualitas.com.mx/documents/19189400/19781967/Qualitas-horizontal.png/692ae411-2d86-ae6b-461d-625b0bfd9472?t=1774680700783" style="max-width: 20%; max-height: 10%; object-fit: contain;" />
      </div>
    row: 0
    col: 0
    width: 36
    height: 5
    tab_name: Dias de pago desde el decreto DM y RT
  - name: " (8)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; display: flex; justify-content: center; align-items: center;">
        <table style="width: 85%; border-collapse: collapse; font-family: Roboto, sans-serif; font-size: 12px;">
          <tr style="background-color: #008798; color: white;">
            <th style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center;">indicador</th>
            <th style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center;">Meta</th>
          </tr>
          <tr>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: left;">Días de pago desde decreto DM</td>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 15px; color: #008798;">65</td>
          </tr>
          <tr>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: left;">Días de pago desde decreto RT</td>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 15px; color: #008798;">110</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Dias de pago desde el decreto DM y RT
  - title: Tiempos de revision robos
    name: Tiempos de revision robos
    model: Modelo_Indi_Dd
    explore: fact_dd
    type: looker_grid
    fields: [fact_dd.promedio_dias_revision, dim_fecha_pago.num_anio, dim_fecha_pago.desc_mes,
      dim_fecha_pago.num_mes]
    pivots: [dim_fecha_pago.num_anio]
    filters:
      fact_dd.classptrobo: ROBO
    sorts: [dim_fecha_pago.num_anio, dim_fecha_pago.num_mes]
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
      dim_fecha_pago.num_anio: Año
      dim_fecha_pago.desc_mes: Mes
      fact_dd.promedio_dias_revision: 'Dias Revision '
    series_cell_visualizations:
      fact_dd.promedio_dias_pago:
        is_active: false
    series_text_format:
      dim_fecha_pago.num_anio:
        align: center
      dim_fecha_pago.desc_mes:
        align: center
      dim_fecha_pago.num_mes:
        align: center
      fact_dd.promedio_dias_revision:
        align: center
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
    defaults_version: 1
    hidden_fields: [dim_fecha_pago.num_mes]
    hidden_pivots: {}
    listen:
      Año: dim_fecha_pago.num_anio
    row: 34
    col: 0
    width: 20
    height: 29
    tab_name: Tiempos de revision DM y RT
  - title: Tiempos de revision PTs
    name: Tiempos de revision PTs
    model: Modelo_Indi_Dd
    explore: fact_dd
    type: looker_grid
    fields: [fact_dd.promedio_dias_revision, dim_fecha_pago.num_anio, dim_fecha_pago.desc_mes,
      dim_fecha_pago.num_mes]
    pivots: [dim_fecha_pago.num_anio]
    filters:
      fact_dd.classptrobo: DM/PTS
    sorts: [dim_fecha_pago.num_anio, dim_fecha_pago.num_mes]
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
      dim_fecha_pago.num_anio: Año
      dim_fecha_pago.desc_mes: Mes
      fact_dd.promedio_dias_revision: Dias Revision
    series_cell_visualizations:
      fact_dd.promedio_dias_pago:
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
    defaults_version: 1
    hidden_fields: [dim_fecha_pago.num_mes]
    hidden_pivots: {}
    listen:
      Año: dim_fecha_pago.num_anio
    row: 5
    col: 0
    width: 20
    height: 29
    tab_name: Tiempos de revision DM y RT
  - title: Tiempos de revision PTs
    name: Tiempos de revision PTs (2)
    model: Modelo_Indi_Dd
    explore: fact_dd
    type: looker_line
    fields: [fact_dd.promedio_dias_revision, dim_fecha_pago.num_anio, dim_fecha_pago.desc_mes,
      dim_fecha_pago.num_mes]
    filters:
      fact_dd.classptrobo: DM/PTS
    sorts: [dim_fecha_pago.num_anio, dim_fecha_pago.num_mes]
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
    hidden_fields: [dim_fecha_pago.num_mes]
    y_axes: [{gridlines: true, label: '', orientation: left, series: [{axisId: fact_dd.promedio_dias_revision,
            id: fact_dd.promedio_dias_revision, name: Días Revisión Promedio}], showLabels: true,
        showValues: true, tickDensity: default, tickDensityCustom: 5, type: linear,
        unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_dd.promedio_dias_revision: "#a94698"
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
      fact_dd.promedio_dias_pago:
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
      Año: dim_fecha_pago.num_anio
    row: 5
    col: 20
    width: 52
    height: 29
    tab_name: Tiempos de revision DM y RT
  - title: Tiempos de revision robos
    name: Tiempos de revision robos (2)
    model: Modelo_Indi_Dd
    explore: fact_dd
    type: looker_line
    fields: [fact_dd.promedio_dias_revision, dim_fecha_pago.num_anio, dim_fecha_pago.desc_mes,
      dim_fecha_pago.num_mes]
    filters:
      fact_dd.classptrobo: ROBO
    sorts: [dim_fecha_pago.num_anio, dim_fecha_pago.num_mes]
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
    hidden_fields: [dim_fecha_pago.num_mes]
    y_axes: [{gridlines: true, label: '', orientation: left, series: [{axisId: fact_dd.promedio_dias_revision,
            id: fact_dd.promedio_dias_revision, name: Días Revisión Promedio}], showLabels: true,
        showValues: true, tickDensity: default, tickDensityCustom: 5, type: linear,
        unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_dd.promedio_dias_revision: "#a94698"
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
      fact_dd.promedio_dias_pago:
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
      Año: dim_fecha_pago.num_anio
    row: 34
    col: 20
    width: 52
    height: 29
    tab_name: Tiempos de revision DM y RT
  - name: " (9)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 5px; bottom: 5px; left: 5px; right: 5px; display: flex; justify-content: center; align-items: center;">
        <img src="https://www.qualitas.com.mx/documents/19189400/19781967/Qualitas-horizontal.png/692ae411-2d86-ae6b-461d-625b0bfd9472?t=1774680700783" style="max-width: 20%; max-height: 10%; object-fit: contain;" />
      </div>
    row: 0
    col: 0
    width: 36
    height: 5
    tab_name: Tiempos de revision DM y RT
  - name: " (10)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; display: flex; justify-content: center; align-items: center;">
        <table style="width: 85%; border-collapse: collapse; font-family: Roboto, sans-serif; font-size: 12px;">
          <tr style="background-color: #008798; color: white;">
            <th style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center;">indicador</th>
            <th style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center;">Meta</th>
          </tr>
          <tr>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: left;">Días de revisión DM</td>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 15px; color: #008798;">2</td>
          </tr>
          <tr>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: left;">Días de revisión RT</td>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 15px; color: #008798;">2</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Tiempos de revision DM y RT
  - title: Tiempo integral de pago robos
    name: Tiempo integral de pago robos
    model: Modelo_Indi_Dd
    explore: fact_dd
    type: looker_grid
    fields: [fact_dd.promedio_tiempo_integral, dim_fecha_pago.num_anio, dim_fecha_pago.desc_mes,
      dim_fecha_pago.num_mes]
    pivots: [dim_fecha_pago.num_anio]
    filters:
      fact_dd.classptrobo: ROBO
    sorts: [dim_fecha_pago.num_anio, dim_fecha_pago.num_mes]
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
      dim_fecha_pago.num_anio: Año
      dim_fecha_pago.desc_mes: Mes
      fact_dd.promedio_tiempo_integral: Dias Tiempo Integral
    series_cell_visualizations:
      fact_dd.promedio_dias_pago:
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
    defaults_version: 1
    hidden_fields: [dim_fecha_pago.num_mes]
    hidden_pivots: {}
    listen:
      Año: dim_fecha_pago.num_anio
    row: 35
    col: 0
    width: 25
    height: 30
    tab_name: Tiempo integral de pago DM y RT
  - title: Tiempo integral de pago PTs
    name: Tiempo integral de pago PTs
    model: Modelo_Indi_Dd
    explore: fact_dd
    type: looker_grid
    fields: [fact_dd.promedio_tiempo_integral, dim_fecha_pago.num_anio, dim_fecha_pago.desc_mes,
      dim_fecha_pago.num_mes]
    pivots: [dim_fecha_pago.num_anio]
    filters:
      fact_dd.classptrobo: DM/PTS
    sorts: [dim_fecha_pago.num_anio, dim_fecha_pago.num_mes]
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
      dim_fecha_pago.num_anio: Año
      dim_fecha_pago.desc_mes: Mes
      fact_dd.promedio_tiempo_integral: Dias Tiempo Integral
    series_cell_visualizations:
      fact_dd.promedio_dias_pago:
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
    defaults_version: 1
    hidden_fields: [dim_fecha_pago.num_mes]
    hidden_pivots: {}
    listen:
      Año: dim_fecha_pago.num_anio
    row: 5
    col: 0
    width: 25
    height: 30
    tab_name: Tiempo integral de pago DM y RT
  - title: Tiempo integral de pago PTs
    name: Tiempo integral de pago PTs (2)
    model: Modelo_Indi_Dd
    explore: fact_dd
    type: looker_line
    fields: [fact_dd.promedio_tiempo_integral, dim_fecha_pago.num_anio, dim_fecha_pago.desc_mes,
      dim_fecha_pago.num_mes]
    filters:
      fact_dd.classptrobo: DM/PTS
    sorts: [dim_fecha_pago.num_anio, dim_fecha_pago.num_mes]
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
    hidden_fields: [dim_fecha_pago.num_mes]
    y_axes: [{gridlines: true, label: '', orientation: left, series: [{axisId: fact_dd.promedio_tiempo_integral,
            id: fact_dd.promedio_tiempo_integral, name: Días Tiempo Integral Promedio}],
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_dd.promedio_tiempo_integral: "#a94698"
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
      fact_dd.promedio_dias_pago:
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
    listen:
      Año: dim_fecha_pago.num_anio
    row: 5
    col: 25
    width: 47
    height: 30
    tab_name: Tiempo integral de pago DM y RT
  - title: Tiempo integral de pago robos
    name: Tiempo integral de pago robos (2)
    model: Modelo_Indi_Dd
    explore: fact_dd
    type: looker_line
    fields: [fact_dd.promedio_tiempo_integral, dim_fecha_pago.num_anio, dim_fecha_pago.desc_mes,
      dim_fecha_pago.num_mes]
    filters:
      fact_dd.classptrobo: ROBO
    sorts: [dim_fecha_pago.num_anio, dim_fecha_pago.num_mes]
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
    hidden_fields: [dim_fecha_pago.num_mes]
    y_axes: [{gridlines: true, label: '', orientation: left, series: [{axisId: fact_dd.promedio_tiempo_integral,
            id: fact_dd.promedio_tiempo_integral, name: Días Tiempo Integral Promedio}],
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_dd.promedio_tiempo_integral: "#a94698"
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
      fact_dd.promedio_dias_pago:
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
    listen:
      Año: dim_fecha_pago.num_anio
    row: 35
    col: 25
    width: 47
    height: 30
    tab_name: Tiempo integral de pago DM y RT
  - name: " (11)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 5px; bottom: 5px; left: 5px; right: 5px; display: flex; justify-content: center; align-items: center;">
        <img src="https://www.qualitas.com.mx/documents/19189400/19781967/Qualitas-horizontal.png/692ae411-2d86-ae6b-461d-625b0bfd9472?t=1774680700783" style="max-width: 20%; max-height: 10%; object-fit: contain;" />
      </div>
    row: 0
    col: 0
    width: 36
    height: 5
    tab_name: Tiempo integral de pago DM y RT
  - name: " (12)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; display: flex; justify-content: center; align-items: center;">
        <table style="width: 85%; border-collapse: collapse; font-family: Roboto, sans-serif; font-size: 12px;">
          <tr style="background-color: #008798; color: white;">
            <th style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center;">indicador</th>
            <th style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center;">Meta</th>
          </tr>
          <tr>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: left;">Días de desde el reporte DM</td>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 15px; color: #008798;">N/A</td>
          </tr>
          <tr>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: left;">Días de desde el reporte RT</td>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 15px; color: #008798;">N/A</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Tiempo integral de pago DM y RT
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
