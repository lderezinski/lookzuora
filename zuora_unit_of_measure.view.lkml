view: zuora_unit_of_measure {
  sql_table_name: stitch_zuora.zuora_unit_of_measure ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."Id" ;;
  }


  dimension: active {
    type: yesno
    sql: ${TABLE}."Active" ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}."CreatedById" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."CreatedDate" ;;
  }

  dimension: decimal_places {
    type: number
    sql: ${TABLE}."DecimalPlaces" ;;
  }

  dimension: displayed_as {
    type: string
    sql: ${TABLE}."DisplayedAs" ;;
  }

  dimension: rounding_mode {
    type: string
    sql: ${TABLE}."RoundingMode" ;;
  }

  dimension: uom_name {
    type: string
    sql: ${TABLE}."UomName" ;;
  }

  dimension: updated_by_id {
    type: string
    sql: ${TABLE}."UpdatedById" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."UpdatedDate" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, uom_name]
  }
}
