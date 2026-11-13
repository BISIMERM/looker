---
- dashboard: cabina
  title: Cabina
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: CK30Sdl06rQGA5plDSSKAt
  theme_name: ''
  layout_granularity: granular
  layout: newspaper
  tabs:
  - name: Encuestas de Servicio
    label: Encuestas de Servicio
  - name: Tiempo de llamada y nivel de servicio
    label: Tiempo de llamada y nivel de servicio
  - name: Tiempo promedio de asignación y Asignación por Cercanía
    label: Tiempo promedio de asignación y Asignación por Cercanía
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
      dim_encuesta.tipo_encuesta: '"21 CABINA_MX_Cabinista","21 CABINA_MX_noCabinista"'
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
    header_font_size: '20'
    rows_font_size: '20'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
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
      dim_tiempo.desc_mes: 84
      2026_fact_encuesta.total_contador: 168
      2026_fact_encuesta.ps: 75
    series_cell_visualizations:
      fact_encuesta.total_detractor:
        is_active: false
      dim_tiempo.num_anio:
        is_active: false
    series_text_format:
      dim_tiempo.num_anio:
        bg_color: ''
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
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: center
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    conditional_formatting: [{apply_formatting_to_row: false, cell_format: {background_color: !!null '',
          color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
            options: {mirror: false, reverse: false, stepped: false}, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
          font_color: !!null '', font_style: {bold: false, italic: false, strikethrough: false}},
        fields: !!null '', id: 7cdc7e07-3dc9-4317-b388-020f713da44f, row_format: {
          background_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
            options: {mirror: false, reverse: false, stepped: false}, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
          font_color: !!null '', font_style: {bold: false, italic: false, strikethrough: false}},
        type: along a scale..., value: !!null ''}]
    series_tooltip_options:
      dim_tiempo.num_anio:
        template: |2-

                <div style="padding: 5px 0;">
                  <div style="font-weight: bold;">{{ dim_tiempo.num_anio }} - {{ dim_tiempo.num_mes }} - {{ dim_tiempo.desc_mes }}</div>
                </div><div style="padding: 5px 0;">
              <div>Num Anio</div>
              <div style="font-weight: bold;">{{ dim_tiempo.num_anio }}</div>
            </div>
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
        custom_tooltips_enabled: false
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
    row_groups:
      enabled: false
      row_grouping_fields: []
    listen:
      Año: dim_tiempo.num_anio
    row: 5
    col: 0
    width: 14
    height: 25
    tab_name: Encuestas de Servicio
  - title: Encuesta
    name: Encuesta
    model: Modelo_Indi_Encuestas
    explore: fact_encuesta
    type: looker_line
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_encuesta.ps]
    filters:
      dim_encuesta.tipo_encuesta: '"21 CABINA_MX_Cabinista","21 CABINA_MX_noCabinista"'
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '23'
    series_colors:
      fact_encuesta.ps: "#a94698"
    reference_lines: []
    swap_axes: false
    series_tooltip_options:
      fact_encuesta.ps:
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
          align: center
        template: |2-

                <div style="padding: 5px 0;">
                  <div style="font-weight: bold;">{{ dim_tiempo.num_anio }} - {{ dim_tiempo.desc_mes }}</div>
                </div><div style="padding: 5px 0;">
              <div>PS</div>
              <div style="font-weight: bold;">{{ fact_encuesta.ps }}</div>
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
    height: 25
    tab_name: Encuestas de Servicio
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
    tab_name: Encuestas de Servicio
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
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center;">Cabina</td>
            <td style="padding: 4px 6px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 18px; color: #008798;">96%</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Encuestas de Servicio
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
    tab_name: Tiempo de llamada y nivel de servicio
  - title: Detalle
    name: Detalle (2)
    model: Modelo_Indi_Cabina
    explore: fact_cabina_servicio_tiempo
    type: looker_grid
    fields: [fact_cabina_servicio_tiempo.num_anio, fact_cabina_servicio_tiempo.desc_mes,
      fact_cabina_servicio_tiempo.promedio_seg_acd, fact_cabina_servicio_tiempo.promedio_nivel_servicio]
    pivots: [fact_cabina_servicio_tiempo.num_anio]
    filters:
      fact_cabina_servicio_tiempo.num_anio: ''
    sorts: [fact_cabina_servicio_tiempo.num_anio, fact_cabina_servicio_tiempo.desc_mes]
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
    column_order: []
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      fact_cabina_servicio_tiempo.promedio_seg_acd:
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
    hidden_pivots: {}
    listen:
      Año: fact_cabina_servicio_tiempo.num_anio
    row: 5
    col: 0
    width: 29
    height: 30
    tab_name: Tiempo de llamada y nivel de servicio
  - title: Tiempo promedio de llamada
    name: Tiempo promedio de llamada
    model: Modelo_Indi_Cabina
    explore: fact_cabina_servicio_tiempo
    type: looker_line
    fields: [fact_cabina_servicio_tiempo.num_anio, fact_cabina_servicio_tiempo.desc_mes,
      fact_cabina_servicio_tiempo.promedio_seg_acd]
    filters:
      fact_cabina_servicio_tiempo.num_anio: '2026'
    sorts: [fact_cabina_servicio_tiempo.num_anio, fact_cabina_servicio_tiempo.desc_mes]
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
    hidden_fields: []
    y_axes: [{gridlines: true, label: '', orientation: left, series: [{axisId: fact_cabina_servicio_tiempo.promedio_seg_acd,
            id: fact_cabina_servicio_tiempo.promedio_seg_acd, name: Tiempo Promedio
              Llamada}], showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '23'
    series_colors:
      fact_cabina_servicio_tiempo.promedio_seg_acd: "#a94698"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#009aa3"}]
    modern2026: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: true
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      fact_cabina_servicio_tiempo.promedio_seg_acd:
        is_active: false
    table_theme: unstyled
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: true
    table_show_headers: true
    enable_conditional_formatting: false
    header_font_color: "#ffffff"
    header_background_color: "#009aa3"
    header_text_alignment: center
    header_font_bold: false
    header_font_italic: false
    header_font_size: '12'
    rows_font_size: '12'
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: center
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_pivots: {}
    listen:
      Año: fact_cabina_servicio_tiempo.num_anio
    row: 5
    col: 29
    width: 43
    height: 30
    tab_name: Tiempo de llamada y nivel de servicio
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
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: left;">Tiempo promedio de llamada</td>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 15px; color: #008798;">00:04:25</td>
          </tr>
          <tr>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: left;">% Nivel de Servicio</td>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 15px; color: #008798;">96%</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Tiempo de llamada y nivel de servicio
  - title: Detalle
    name: Detalle (3)
    model: Modelo_Indi_Tip_Cerc
    explore: fact_tip_cerc
    type: looker_grid
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_tip_cerc.promedio_tiempo_asignacion,
      fact_tip_cerc.pct_asignacion_cercania_corregido]
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
      fact_tip_cerc.pct_asignacion_cercania_corregido: Asignacion por Cercania
      dim_tiempo.num_anio: Año
      dim_tiempo.desc_mes: Mes
    series_column_widths:
      dim_tiempo.desc_mes: 79
      2025_fact_tip_cerc.promedio_tiempo_asignacion: 140
      2025_fact_tip_cerc.pct_asignacion_cercania_corregido: 167
      2026_fact_tip_cerc.promedio_tiempo_asignacion: 140
      2026_fact_tip_cerc.pct_asignacion_cercania_corregido: 167
    series_cell_visualizations:
      fact_tip_cerc.promedio_tiempo_asignacion:
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
    conditional_formatting: [{apply_formatting_to_row: false, cell_format: {background_color: !!null '',
          color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
            options: {mirror: false, reverse: false, stepped: false}, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
          font_color: !!null '', font_style: {bold: false, italic: false, strikethrough: false}},
        fields: !!null '', id: 73df5596-b8a1-417b-a438-9d8f29d2e47d, row_format: {
          background_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
            options: {mirror: false, reverse: false, stepped: false}, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
          font_color: !!null '', font_style: {bold: false, italic: false, strikethrough: false}},
        type: along a scale..., value: !!null ''}]
    series_value_format:
      dim_tiempo.num_mes: "###0"
    defaults_version: 1
    hidden_fields: [dim_tiempo.num_mes]
    row_groups:
      enabled: false
    hidden_pivots: {}
    listen:
      Año: dim_tiempo.num_anio
    row: 5
    col: 0
    width: 29
    height: 29
    tab_name: Tiempo promedio de asignación y Asignación por Cercanía
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
    tab_name: Tiempo promedio de asignación y Asignación por Cercanía
  - title: Tiempo promedio de asignacion y asignacion por cercania
    name: Tiempo promedio de asignacion y asignacion por cercania
    model: Modelo_Indi_Tip_Cerc
    explore: fact_tip_cerc
    type: looker_line
    fields: [dim_tiempo.num_anio, dim_tiempo.num_mes, dim_tiempo.desc_mes, fact_tip_cerc.promedio_tiempo_asignacion,
      fact_tip_cerc.pct_asignacion_cercania_corregido]
    filters:
      dim_tiempo.fch_fecha_date: after 2026/01/01
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
        orientation: left, series: [{axisId: fact_tip_cerc.promedio_tiempo_asignacion,
            id: fact_tip_cerc.promedio_tiempo_asignacion, name: Tiempo Asignación}],
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: true}, {gridlines: true, label: '', orientation: right,
        series: [{axisId: fact_tip_cerc.pct_asignacion_cercania_corregido, id: fact_tip_cerc.pct_asignacion_cercania_corregido,
            name: Asignacion por Cercania}], showLabels: true, showValues: true, tickDensity: default,
        type: linear, unpinAxis: true}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    font_size: '23'
    series_colors:
      fact_tip_cerc.promedio_tiempo_asignacion: "#a94698"
      fact_tip_cerc.pct_asignacion_cercania_qlik: "#009aa3"
    series_labels:
      fact_tip_cerc.pct_asignacion_cercania_corregido: Asignacion por Cercania
    reference_lines: []
    series_tooltip_options:
      fact_tip_cerc.promedio_tiempo_asignacion:
        custom_tooltips_enabled: true
        style:
          font_size: 23
          font_family: Roboto, 'Noto Sans', 'Noto Sans JP', 'Noto Sans CJK KR', 'Noto
            Sans Arabic UI', 'Noto Sans Devanagari UI', 'Noto Sans Hebrew', 'Noto
            Sans Thai UI', Helvetica, Arial, sans-serif
          font_color: "#FFFFFF"
          background_color: "#262D33"
          border_radius: 4
          border_color: transparent
          box_shadow: none
          align: left
        template: |2-

                <div style="padding: 5px 0;">
                  <div style="font-weight: bold;">{{ dim_tiempo.num_anio }} - {{ dim_tiempo.desc_mes }}</div>
                </div><div style="padding: 5px 0;">
              <div>Tiempo Asignación</div>
              <div style="font-weight: bold;">{{ fact_tip_cerc.promedio_tiempo_asignacion }}</div>
            </div>
      fact_tip_cerc.pct_asignacion_cercania_corregido:
        custom_tooltips_enabled: true
        style:
          font_size: 23
          font_family: Roboto, 'Noto Sans', 'Noto Sans JP', 'Noto Sans CJK KR', 'Noto
            Sans Arabic UI', 'Noto Sans Devanagari UI', 'Noto Sans Hebrew', 'Noto
            Sans Thai UI', Helvetica, Arial, sans-serif
          font_color: "#FFFFFF"
          background_color: "#262D33"
          border_radius: 4
          border_color: transparent
          box_shadow: none
          align: left
        template: |2-

                <div style="padding: 5px 0;">
                  <div style="font-weight: bold;">{{ dim_tiempo.num_anio }} - {{ dim_tiempo.desc_mes }}</div>
                </div><div style="padding: 5px 0;">
              <div>Asignacion por Cercania</div>
              <div style="font-weight: bold;">{{ fact_tip_cerc.pct_asignacion_cercania_corregido }}</div>
            </div>
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
      fact_tip_cerc.promedio_tiempo_asignacion:
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
    show_null_labels: true
    listen:
      Año: dim_tiempo.num_anio
    row: 5
    col: 29
    width: 43
    height: 29
    tab_name: Tiempo promedio de asignación y Asignación por Cercanía
  - name: " (6)"
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
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: left;">Tiempo de asignación</td>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 15px; color: #008798;">00:05:00</td>
          </tr>
          <tr>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: left;">% asignación por cercanía</td>
            <td style="padding: 4px 8px; border: 1px solid #e5e5e5; text-align: center; font-weight: 900; font-size: 15px; color: #008798;">80%</td>
          </tr>
        </table>
      </div>
    row: 0
    col: 36
    width: 36
    height: 5
    tab_name: Tiempo promedio de asignación y Asignación por Cercanía
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
