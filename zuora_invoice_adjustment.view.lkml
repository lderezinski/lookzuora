view: zuora_invoice_adjustment {
  sql_table_name: stitch_zuora.zuora_invoice_adjustment ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }


  dimension: account_id {
    type: string
    sql: ${TABLE}.AccountId ;;
  }

  dimension: accounting_code {
    type: string
    sql: ${TABLE}.AccountingCode ;;
  }

  dimension_group: adjustment {
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
    sql: ${TABLE}.AdjustmentDate ;;
  }

  dimension: adjustment_number {
    type: string
    sql: ${TABLE}.AdjustmentNumber ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
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

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CustomerName ;;
  }

  dimension: customer_number {
    type: string
    sql: ${TABLE}.CustomerNumber ;;
  }

  dimension: impact_amount {
    type: number
    sql: ${TABLE}.ImpactAmount ;;
  }

  dimension: integration_id__ns {
    type: string
    sql: ${TABLE}.IntegrationId__NS ;;
  }

  dimension: integration_status__ns {
    type: string
    sql: ${TABLE}.IntegrationStatus__NS ;;
  }

  dimension: invoice_id {
    type: string
    sql: ${TABLE}.InvoiceId ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}.InvoiceNumber ;;
  }

  dimension: reason_code {
    type: string
    sql: ${TABLE}.ReasonCode ;;
  }

  dimension: reference_id {
    type: string
    sql: ${TABLE}.ReferenceId ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: sync_date__ns {
    type: string
    sql: ${TABLE}.SyncDate__NS ;;
  }

  dimension: transferred_to_accounting {
    type: string
    sql: ${TABLE}.TransferredToAccounting ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
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
    drill_fields: [id, customer_name]
  }
}
