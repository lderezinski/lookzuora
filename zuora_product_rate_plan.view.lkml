view: zuora_product_rate_plan {
  sql_table_name: stitch_zuora.zuora_product_rate_plan ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }


  dimension: billing_period__ns {
    type: string
    sql: ${TABLE}.BillingPeriod__NS ;;
  }

  dimension: billing_tag__c {
    type: string
    sql: ${TABLE}.BillingTag__c ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension_group: effective_end {
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
    sql: ${TABLE}.EffectiveEndDate ;;
  }

  dimension_group: effective_start {
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
    sql: ${TABLE}.EffectiveStartDate ;;
  }

  dimension: include_children__ns {
    type: string
    sql: ${TABLE}.IncludeChildren__NS ;;
  }

  dimension: item_type__ns {
    type: string
    sql: ${TABLE}.ItemType__NS ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.ProductId ;;
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
    drill_fields: [id, name]
  }
}
