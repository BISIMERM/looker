---
- dashboard: ajustes
  title: Ajustes
  description: ''
  filters_bar_collapsed: true
  preferred_slug: 36vTJTIRIFkVDfufpeHrBW
  theme_name: ''
  layout_granularity: granular
  layout: newspaper
  tabs:
  - name: Ajustes
    label: Ajustes
  - name: Tiempo de arribo y atención
    label: Tiempo de arribo y atención
  - name: Eficiencia ajuste express
    label: Eficiencia ajuste express
  - name: Asignación por cercanía
    label: Asignación por cercanía
  elements:
  - title: Ajuste Tradicional
    name: Ajuste Tradicional
    model: Modelo_Indi_Encuestas
    explore: fact_encuesta
    type: looker_grid
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_encuesta.total_contador,
      fact_encuesta.ps]
    pivots: [dim_tiempo.num_anio]
    filters:
      dim_encuesta.tipo_encuesta: 02 AJUSTE PRESENCIAL,25 Ajustador Presencial 48h
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
    size_to_fit: false
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
      fact_encuesta.total_contador: Encuestas Contestadas
    series_column_widths:
      dim_tiempo.desc_mes: 79
      2026_fact_encuesta.total_contador: 226
      2026_fact_encuesta.ps: 75
    series_cell_visualizations:
      fact_encuesta.total_detractor:
        is_active: false
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    limit_displayed_rows_values:
      first_last: first
      num_rows: '0'
      show_hide: hide
    table_column_hover_highlight_enable: true
    table_show_headers: true
    header_font_color: "#ffffff"
    header_background_color: "#009aa3"
    header_font_bold: false
    header_font_italic: false
    cell_background_color: ''
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
    width: 16
    height: 29
    tab_name: Ajustes
  - title: Ajuste Tradicional
    name: Ajuste Tradicional (2)
    model: Modelo_Indi_Encuestas
    explore: fact_encuesta
    type: looker_line
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_encuesta.ps]
    filters:
      dim_encuesta.tipo_encuesta: 02 AJUSTE PRESENCIAL,25 Ajustador Presencial 48h
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
    col: 16
    width: 56
    height: 29
    tab_name: Ajustes
  - title: Ajuste Express
    name: Ajuste Express
    model: Modelo_Indi_Encuestas
    explore: fact_encuesta
    type: looker_grid
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_encuesta.total_contador,
      fact_encuesta.ps]
    pivots: [dim_tiempo.num_anio]
    filters:
      dim_encuesta.tipo_encuesta: 03 AJUSTE EXPRÉS
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
      fact_encuesta.total_contador: Encuestas Contestadas
    series_column_widths:
      dim_tiempo.num_anio: 82
      dim_tiempo.desc_mes: 75
      fact_encuesta.total_contador: 226
      fact_encuesta.ps: 75
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
    row: 34
    col: 0
    width: 16
    height: 29
    tab_name: Ajustes
  - title: Ajuste Express
    name: Ajuste Express (2)
    model: Modelo_Indi_Encuestas
    explore: fact_encuesta
    type: looker_line
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_encuesta.ps]
    filters:
      dim_encuesta.tipo_encuesta: 03 AJUSTE EXPRÉS
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
    y_axis_zoom: true
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
    row: 34
    col: 16
    width: 56
    height: 29
    tab_name: Ajustes
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
    tab_name: Ajustes
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
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">Ajuste</td>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 18px; color: #008798;">96%</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Ajustes
  - title: Integral Atencion Ajustador Presencial
    name: Integral Atencion Ajustador Presencial
    model: Modelo_Indi_Tip_Cerc
    explore: fact_tip_cerc
    type: looker_line
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_tip_cerc.atencion]
    filters:
      dim_tiempo.fch_fecha_year: after 2025/01/01
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
        orientation: left, series: [{axisId: fact_tip_cerc.atencion, id: fact_tip_cerc.atencion,
            name: Atencion}], showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_tip_cerc.atencion: "#a94698"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#009aa3"}]
    series_tooltip_options:
      fact_tip_cerc.promedio_atencion_2026:
        custom_tooltips_enabled: false
        style:
          font_size: 12
          font_family: Roboto, 'Noto Sans', 'Noto Sans JP', 'Noto Sans CJK KR', 'Noto
            Sans Arabic UI', 'Noto Sans Devanagari UI', 'Noto Sans Hebrew', 'Noto
            Sans Thai UI', Helvetica, Arial, sans-serif
          font_color: "#FFFFFF"
          background_color: "#262D33"
          border_radius: 4
          border_color: transparent
          box_shadow: none
          align: left
        template: |-
          <div style="padding: 5px 0;">
              <div>Fact Tip Cerc Atencion</div>
              <div style="font-weight: bold;">{{ fact_tip_cerc.promedio_atencion_2026 }}</div>
            </div>
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
      fact_tip_cerc.promedio_atencion_2026:
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
    row: 55
    col: 29
    width: 43
    height: 32
    tab_name: Tiempo de arribo y atención
  - title: Integral Arribo Ajustador Presencial
    name: Integral Arribo Ajustador Presencial
    model: Modelo_Indi_Tip_Cerc
    explore: fact_tip_cerc
    type: looker_grid
    fields: [dim_tiempo.num_anio, dim_tiempo.desc_mes, dim_tiempo.num_mes,
    # fact_tip_cerc.promedio_TiArrib_TiAsig,
    #  fact_tip_cerc.Reportes_en_meta,
      fact_tip_cerc.total_menor_31_min, fact_tip_cerc.pct_menor_31_min,
      fact_tip_cerc.total_entre_31_45_min, fact_tip_cerc.pct_entre_31_45_min, fact_tip_cerc.total_entre_45_60_min,
      fact_tip_cerc.pct_entre_45_60_min, fact_tip_cerc.total_mayor_60_min, fact_tip_cerc.pct_mayor_60_min]
    pivots: [dim_tiempo.num_anio]
    filters:
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
      fact_tip_cerc.promedio_arribo_hhmmss: Integral Arribo
      fact_tip_cerc.promedio_TiArrib_TiAsig: Integral Arribo Presencial
    series_cell_visualizations:
      fact_tip_cerc.promedio_atencion_2026:
        is_active: false
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: true
    table_show_headers: true
    header_font_color: "#fffefe"
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
      fact_tip_cerc.pct_menor_31_min: "#,##0%"
      fact_tip_cerc.pct_entre_31_45_min: "#,##0%"
      fact_tip_cerc.pct_entre_45_60_min: "#,##0%"
      fact_tip_cerc.pct_mayor_60_min: "#,##0%"
    series_tooltip_options:
      fact_tip_cerc.promedio_atencion_2026:
        custom_tooltips_enabled: false
        style:
          font_size: 12
          font_family: Roboto, 'Noto Sans', 'Noto Sans JP', 'Noto Sans CJK KR', 'Noto
            Sans Arabic UI', 'Noto Sans Devanagari UI', 'Noto Sans Hebrew', 'Noto
            Sans Thai UI', Helvetica, Arial, sans-serif
          font_color: "#FFFFFF"
          background_color: "#262D33"
          border_radius: 4
          border_color: transparent
          box_shadow: none
          align: left
        template: |-
          <div style="padding: 5px 0;">
              <div>Fact Tip Cerc Atencion</div>
              <div style="font-weight: bold;">{{ fact_tip_cerc.promedio_atencion_2026 }}</div>
            </div>
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
    hidden_pivots:
      '2025':
        measure_names:
        - fact_tip_cerc.total_menor_31_min
        - fact_tip_cerc.pct_menor_31_min
        - fact_tip_cerc.total_entre_31_45_min
        - fact_tip_cerc.pct_entre_31_45_min
        - fact_tip_cerc.total_entre_45_60_min
        - fact_tip_cerc.pct_entre_45_60_min
        - fact_tip_cerc.total_mayor_60_min
        - fact_tip_cerc.pct_mayor_60_min
    hidden_fields: [dim_tiempo.num_mes]
    listen:
      Año: dim_tiempo.num_anio
    row: 5
    col: 0
    width: 72
    height: 30
    tab_name: Tiempo de arribo y atención
  - title: Integral Arribo Ajustador Presencial
    name: Integral Arribo Ajustador Presencial (2)
    model: Modelo_Indi_Tip_Cerc
    explore: fact_tip_cerc
    type: looker_line
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_tip_cerc.promedio_arribo_hhmmss]
    filters:
      dim_tiempo.fch_fecha_year: after 2025/01/01
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
        orientation: left, series: [{axisId: fact_tip_cerc.promedio_arribo_hhmmss,
            id: fact_tip_cerc.promedio_arribo_hhmmss, name: Integral Arribo (Ajustador)}],
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_tip_cerc.promedio_arribo_hhmmss: "#a94698"
    series_labels:
      fact_tip_cerc.pct_menor_31_min: "% Reportes en meta"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#009aa3"}]
    series_tooltip_options:
      fact_tip_cerc.promedio_atencion_2026:
        custom_tooltips_enabled: false
        style:
          font_size: 12
          font_family: Roboto, 'Noto Sans', 'Noto Sans JP', 'Noto Sans CJK KR', 'Noto
            Sans Arabic UI', 'Noto Sans Devanagari UI', 'Noto Sans Hebrew', 'Noto
            Sans Thai UI', Helvetica, Arial, sans-serif
          font_color: "#FFFFFF"
          background_color: "#262D33"
          border_radius: 4
          border_color: transparent
          box_shadow: none
          align: left
        template: |-
          <div style="padding: 5px 0;">
              <div>Fact Tip Cerc Atencion</div>
              <div style="font-weight: bold;">{{ fact_tip_cerc.promedio_atencion_2026 }}</div>
            </div>
    modern2026: false
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
      dim_tiempo.num_anio: left
      dim_tiempo.num_mes: left
      dim_tiempo.desc_mes: left
    column_order: ["$$$_row_numbers_$$$", dim_tiempo.num_anio, dim_tiempo.num_mes,
      dim_tiempo.desc_mes, fact_tip_cerc.atencion, fact_tip_cerc.porcentaje_reportes_meta_2026]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      fact_tip_cerc.promedio_atencion_2026:
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
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Año: dim_tiempo.num_anio
    row: 35
    col: 0
    width: 72
    height: 20
    tab_name: Tiempo de arribo y atención
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
    tab_name: Tiempo de arribo y atención
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
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">Ajuste</td>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 18px; color: #008798;">96%</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Tiempo de arribo y atención
  - title: Integral Atencion Ajustador Presencial
    name: Integral Atencion Ajustador Presencial (2)
    model: Modelo_Indi_Tip_Cerc
    explore: fact_tip_cerc
    type: looker_grid
    fields: [dim_tiempo.desc_mes, dim_tiempo.num_mes, fact_tip_cerc.atencion, fact_tip_cerc.porcentaje_reportes_meta_2026,
      dim_tiempo.num_anio]
    pivots: [dim_tiempo.num_anio]
    filters:
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
      fact_tip_cerc.promedio_arribo_hhmmss: Integral Arribo
    series_cell_visualizations:
      fact_tip_cerc.promedio_atencion_2026:
        is_active: false
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: true
    table_show_headers: true
    header_font_color: "#fffefe"
    header_background_color: "#009aa3"
    header_font_bold: false
    header_font_italic: false
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: center
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    series_tooltip_options:
      fact_tip_cerc.promedio_atencion_2026:
        custom_tooltips_enabled: false
        style:
          font_size: 12
          font_family: Roboto, 'Noto Sans', 'Noto Sans JP', 'Noto Sans CJK KR', 'Noto
            Sans Arabic UI', 'Noto Sans Devanagari UI', 'Noto Sans Hebrew', 'Noto
            Sans Thai UI', Helvetica, Arial, sans-serif
          font_color: "#FFFFFF"
          background_color: "#262D33"
          border_radius: 4
          border_color: transparent
          box_shadow: none
          align: left
        template: |-
          <div style="padding: 5px 0;">
              <div>Fact Tip Cerc Atencion</div>
              <div style="font-weight: bold;">{{ fact_tip_cerc.promedio_atencion_2026 }}</div>
            </div>
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
    hidden_pivots:
      '2025':
        measure_names:
        - fact_tip_cerc.total_entre_45_60_min
        - fact_tip_cerc.pct_entre_45_60_min
    hidden_fields: [dim_tiempo.num_mes]
    listen:
      Año: dim_tiempo.num_anio
    row: 55
    col: 0
    width: 29
    height: 32
    tab_name: Tiempo de arribo y atención
  - title: Detalle
    name: Detalle
    model: Modelo_Indi_Eficiencia_Ade
    explore: fact_eficiencia_ade
    type: looker_grid
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_eficiencia_ade.porcentaje_eficiencia]
    pivots: [dim_tiempo.num_anio]
    filters:
      dim_tiempo.fch_fecha_year: after 2025/01/01
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
    size_to_fit: false
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
    pinned_columns:
      "$$$_row_numbers_$$$": left
      dim_tiempo.num_anio: left
      dim_tiempo.num_mes: left
    column_order: ["$$$_row_numbers_$$$", dim_tiempo.num_anio, dim_tiempo.num_mes,
      dim_tiempo.desc_mes, fact_eficiencia_ade.total_aceptado, fact_eficiencia_ade.total_contador,
      fact_eficiencia_ade.porcentaje_eficiencia]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      dim_tiempo.num_anio: Año
      dim_tiempo.desc_mes: Mes
    series_cell_visualizations:
      fact_eficiencia_ade.total_aceptado:
        is_active: false
      dim_tiempo.num_anio:
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
    conditional_formatting: [{type: along a scale..., value: !!null '', fields: !!null '',
        apply_formatting_to_row: false, cell_format: {background_color: "#1A73E8",
          font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
            palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab, options: {mirror: false,
              reverse: false, stepped: false}}, font_style: {bold: false, italic: false,
            strikethrough: false}}, row_format: {background_color: "#1A73E8", font_color: !!null '',
          color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
            options: {mirror: false, reverse: false, stepped: false}}, font_style: {
            bold: false, italic: false, strikethrough: false}}, field: dim_tiempo.num_anio,
        apply_to: allNumericFields, stringValue: ''}]
    defaults_version: 1
    hidden_fields: [dim_tiempo.num_mes]
    hidden_pivots: {}
    listen:
      Año: dim_tiempo.num_anio
    row: 6
    col: 0
    width: 17
    height: 27
    tab_name: Eficiencia ajuste express
  - title: Eficiencia
    name: Eficiencia
    model: Modelo_Indi_Eficiencia_Ade
    explore: fact_eficiencia_ade
    type: looker_line
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_eficiencia_ade.porcentaje_eficiencia]
    filters:
      dim_tiempo.fch_fecha_year: after 2025/01/01
    sorts: [dim_tiempo.num_anio, dim_tiempo.num_mes]
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
    hidden_fields: [dim_tiempo.num_mes]
    y_axes: [{gridlines: true, label: '', maxValue: !!null '', minValue: !!null '',
        orientation: left, series: [{axisId: fact_eficiencia_ade.porcentaje_eficiencia,
            id: fact_eficiencia_ade.porcentaje_eficiencia, name: "% Eficiencia"}],
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_eficiencia_ade.porcentaje_eficiencia: "#a94698"
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
    defaults_version: 1
    minimum_column_width: 75
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
      dim_tiempo.num_anio: left
      dim_tiempo.num_mes: left
    column_order: ["$$$_row_numbers_$$$", dim_tiempo.num_anio, dim_tiempo.num_mes,
      dim_tiempo.desc_mes, fact_eficiencia_ade.total_aceptado, fact_eficiencia_ade.total_contador,
      fact_eficiencia_ade.porcentaje_eficiencia]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      fact_eficiencia_ade.total_aceptado:
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
    modern2026: false
    hidden_pivots: {}
    listen:
      Año: dim_tiempo.num_anio
    row: 6
    col: 17
    width: 55
    height: 27
    tab_name: Eficiencia ajuste express
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
    height: 6
    tab_name: Eficiencia ajuste express
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
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">% efectividad ajuste express</td>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 18px; color: #008798;">85% - 88%</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Eficiencia ajuste express
  - title: Detalle
    name: Detalle (2)
    model: Modelo_Indi_Tip_Cerc
    explore: fact_tip_cerc
    type: looker_grid
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_tip_cerc.pct_asignacion_cercania_corregido]
    pivots: [dim_tiempo.num_anio]
    filters:
      dim_tiempo.fch_fecha_year: after 2025/01/01
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
    size_to_fit: false
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
    pinned_columns:
      "$$$_row_numbers_$$$": left
      dim_tiempo.num_anio: left
      dim_tiempo.num_mes: left
    column_order: ["$$$_row_numbers_$$$", dim_tiempo.num_anio, dim_tiempo.num_mes,
      dim_tiempo.desc_mes, fact_tip_cerc.pct_asignacion_cercania_corregido]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      dim_tiempo.num_anio: Año
      dim_tiempo.desc_mes: Mes
      fact_tip_cerc.pct_asignacion_cercania_corregido: "% Asignacion por Cercania"
    series_column_widths:
      dim_tiempo.num_anio: 82
      dim_tiempo.desc_mes: 79
      fact_tip_cerc.pct_asignacion_cercania_corregido: 251
      2025_fact_tip_cerc.pct_asignacion_cercania_corregido: 251
      2026_fact_tip_cerc.pct_asignacion_cercania_corregido: 251
    series_cell_visualizations:
      fact_tip_cerc.promedio_atencion_2026:
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
    series_tooltip_options:
      fact_tip_cerc.promedio_atencion_2026:
        custom_tooltips_enabled: false
        style:
          font_size: 12
          font_family: Roboto, 'Noto Sans', 'Noto Sans JP', 'Noto Sans CJK KR', 'Noto
            Sans Arabic UI', 'Noto Sans Devanagari UI', 'Noto Sans Hebrew', 'Noto
            Sans Thai UI', Helvetica, Arial, sans-serif
          font_color: "#FFFFFF"
          background_color: "#262D33"
          border_radius: 4
          border_color: transparent
          box_shadow: none
          align: left
        template: |-
          <div style="padding: 5px 0;">
              <div>Fact Tip Cerc Atencion</div>
              <div style="font-weight: bold;">{{ fact_tip_cerc.promedio_atencion_2026 }}</div>
            </div>
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
    hidden_pivots: {}
    hidden_fields: [dim_tiempo.num_mes]
    listen:
      Año: dim_tiempo.num_anio
    row: 5
    col: 0
    width: 24
    height: 29
    tab_name: Asignación por cercanía
  - title: Asignación por cercanía
    name: Asignación por cercanía
    model: Modelo_Indi_Tip_Cerc
    explore: fact_tip_cerc
    type: looker_line
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_tip_cerc.pct_asignacion_cercania_corregido]
    filters:
      dim_tiempo.fch_fecha_year: after 2025/01/01
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
        orientation: left, series: [{axisId: fact_tip_cerc.pct_asignacion_cercania_corregido,
            id: fact_tip_cerc.pct_asignacion_cercania_corregido, name: "% Asignació\
              n por Cercanía (Compleja)"}], showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_tip_cerc.pct_asignacion_cercania_corregido: "#a94698"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#009aa3"}]
    series_tooltip_options:
      fact_tip_cerc.promedio_atencion_2026:
        custom_tooltips_enabled: false
        style:
          font_size: 12
          font_family: Roboto, 'Noto Sans', 'Noto Sans JP', 'Noto Sans CJK KR', 'Noto
            Sans Arabic UI', 'Noto Sans Devanagari UI', 'Noto Sans Hebrew', 'Noto
            Sans Thai UI', Helvetica, Arial, sans-serif
          font_color: "#FFFFFF"
          background_color: "#262D33"
          border_radius: 4
          border_color: transparent
          box_shadow: none
          align: left
        template: |-
          <div style="padding: 5px 0;">
              <div>Fact Tip Cerc Atencion</div>
              <div style="font-weight: bold;">{{ fact_tip_cerc.promedio_atencion_2026 }}</div>
            </div>
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
      fact_tip_cerc.promedio_atencion_2026:
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
    col: 24
    width: 48
    height: 29
    tab_name: Asignación por cercanía
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
    tab_name: Asignación por cercanía
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
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">% asignación por cercanía</td>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 18px; color: #008798;">80%</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Asignación por cercanía
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
    model: Modelo_Indii_Eficiencia_Ade
    explore: fact_eficiencia_ade
    listens_to_filters: []
    field: dim_tiempo.num_anio
