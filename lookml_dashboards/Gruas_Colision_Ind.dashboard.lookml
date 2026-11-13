---
- dashboard: gras_colisin
  title: Grúas Colisión
  description: ''
  filters_bar_collapsed: true
  preferred_slug: IyMIvJS50OrDXJY62ucUUu
  theme_name: ''
  layout_granularity: granular
  layout: newspaper
  tabs:
  - name: Grúas Colisión
    label: Grúas Colisión
  - name: Tiempo Arribo Local
    label: Tiempo Arribo Local
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
      dim_encuesta.tipo_encuesta: '08 GRÚAS COLISIÓN'
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
      dim_tiempo.num_mes: ''
      dim_tiempo.desc_mes: Mes
    series_column_widths:
      dim_tiempo.desc_mes: 79
      2026_fact_encuesta.total_contador: 155
      2026_fact_encuesta.ps: 75
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
    width: 14
    height: 29
    tab_name: Grúas Colisión
  - title: Encuesta
    name: Encuesta
    model: Modelo_Indi_Encuestas
    explore: fact_encuesta
    type: looker_line
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_encuesta.ps]
    filters:
      dim_encuesta.tipo_encuesta: '08 GRÚAS COLISIÓN'
    sorts: [dim_tiempo.num_mes]
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
    col: 14
    width: 58
    height: 29
    tab_name: Grúas Colisión
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
    tab_name: Grúas Colisión
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
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">Grúas Colisión</td>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 18px; color: #008798;">92%</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Grúas Colisión
  - title: Rangos Fuera de Meta
    name: Rangos Fuera de Meta
    model: Modelo_Indi_Gruas
    explore: fact_gruas_colision
    type: looker_grid
    fields: [dim_fecha_arribo.num_anio, dim_fecha_arribo.desc_mes, dim_fecha_arribo.num_mes,
      fact_gruas_colision.sum_num_arribo, fact_gruas_colision.pct_cumplimiento_0_52,
      fact_gruas_colision.pct_dentro_de_meta, fact_gruas_colision.total_arr_00_a_52,
      fact_gruas_colision.pct_0_a_52_min, fact_gruas_colision.total_arr_53_a_72, fact_gruas_colision.pct_53_a_75_min,
      fact_gruas_colision.total_arr_73_a_105, fact_gruas_colision.pct_75_a_105_min,
      fact_gruas_colision.total_arr_105_plus, fact_gruas_colision.pct_mayor_105_min]
    pivots: [dim_fecha_arribo.num_anio]
    filters:
      dim_fecha_arribo.fch_fecha_date: after 2025/01/01
    sorts: [dim_fecha_arribo.num_anio, dim_fecha_arribo.num_mes]
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
    column_order: [dim_fecha_arribo.num_anio, dim_fecha_arribo.desc_mes, fact_gruas_colision.sum_num_arribo,
      fact_gruas_colision.pct_cumplimiento_0_52, fact_gruas_colision.pct_dentro_de_meta,
      fact_gruas_colision.pct_0_a_52_min, fact_gruas_colision.total_arr_00_a_52, fact_gruas_colision.pct_53_a_75_min,
      fact_gruas_colision.total_arr_53_a_72, fact_gruas_colision.pct_75_a_105_min,
      fact_gruas_colision.total_arr_73_a_105, fact_gruas_colision.pct_mayor_105_min,
      fact_gruas_colision.total_arr_105_plus]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      dim_fecha_arribo.desc_mes: Mes
    series_cell_visualizations:
      fact_gruas_colision.tiempo_promedio_arribo_formato:
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
    hidden_fields: [dim_fecha_arribo.num_mes]
    defaults_version: 1
    hidden_pivots:
      '2025':
        measure_names:
        - fact_gruas_colision.total_arr_00_a_52
        - fact_gruas_colision.pct_0_a_52_min
        - fact_gruas_colision.total_arr_53_a_72
        - fact_gruas_colision.pct_53_a_75_min
        - fact_gruas_colision.total_arr_73_a_105
        - fact_gruas_colision.pct_75_a_105_min
        - fact_gruas_colision.total_arr_105_plus
        - fact_gruas_colision.pct_mayor_105_min
    listen:
      Año: dim_fecha_arribo.num_anio
    row: 5
    col: 0
    width: 72
    height: 32
    tab_name: Tiempo Arribo Local
  - title: Tiempo de Arribo Local
    name: Tiempo de Arribo Local
    model: Modelo_Indi_Gruas
    explore: fact_gruas_colision
    type: looker_line
    fields: [dim_fecha_arribo.num_anio, dim_fecha_arribo.desc_mes, dim_fecha_arribo.num_mes,
      fact_gruas_colision.sum_num_arribo]
    filters:
      dim_fecha_arribo.fch_fecha_date: after 2025/10/01
    sorts: [dim_fecha_arribo.num_anio, dim_fecha_arribo.num_mes]
    limit: 500
    column_limit: 50
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
    hidden_fields: [dim_fecha_arribo.num_mes]
    y_axes: [{gridlines: true, label: '', orientation: left, series: [{axisId: fact_gruas_colision.sum_num_arribo,
            id: fact_gruas_colision.sum_num_arribo, name: Tiempo de Arribo Local (num_minutos_arribo)}],
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_gruas_colision.sum_num_arribo: "#a94698"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#009aa3"}]
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      fact_gruas_colision.tiempo_promedio_arribo_formato:
        is_active: false
    table_theme: white
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: false
    table_show_headers: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_bold: false
    header_font_italic: false
    header_font_size: '12'
    rows_font_size: '12'
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: ''
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    listen:
      Año: dim_fecha_arribo.num_anio
    row: 37
    col: 0
    width: 72
    height: 14
    tab_name: Tiempo Arribo Local
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
    tab_name: Tiempo Arribo Local
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
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">Tiempo de arribo colisión local</td>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 18px; color: #008798;">00:52:00</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Tiempo Arribo Local
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
