view: zuora_product_rate_plan_charge_tier {
  sql_table_name: stitch_zuora.zuora_product_rate_plan_charge_tier ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }


  dimension: created_by_id {
    type: string
    sql: ${TABLE}.CreatedById ;;
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
    sql: ${TABLE}.CreatedDate ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: ending_unit {
    type: number
    sql: ${TABLE}.EndingUnit ;;
  }

  dimension: is_overage_price {
    type: yesno
    sql: ${TABLE}.IsOveragePrice ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

  dimension: price_format {
    type: string
    sql: ${TABLE}.PriceFormat ;;
  }

  dimension: product_rate_plan_charge_id {
    type: string
    sql: ${TABLE}.ProductRatePlanChargeId ;;
  }

  dimension: starting_unit {
    type: number
    sql: ${TABLE}.StartingUnit ;;
  }

  dimension: tier {
    type: number
    sql: ${TABLE}.Tier ;;
  }

  dimension: updated_by_id {
    type: string
    sql: ${TABLE}.UpdatedById ;;
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
    sql: ${TABLE}.UpdatedDate ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
