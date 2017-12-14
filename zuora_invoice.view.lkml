view: zuora_invoice {
  sql_table_name: stitch_zuora.zuora_invoice ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."Id" ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}."AccountId" ;;
  }

  dimension: adjustment_amount {
    type: number
    sql: ${TABLE}."AdjustmentAmount" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."Amount" ;;
  }

  dimension: amount_without_tax {
    type: number
    sql: ${TABLE}."AmountWithoutTax" ;;
  }

  dimension: balance {
    type: number
    sql: ${TABLE}."Balance" ;;
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

  dimension: credit_balance_adjustment_amount {
    type: number
    sql: ${TABLE}."CreditBalanceAdjustmentAmount" ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}."DueDate" ;;
  }

  dimension: includes_one_time {
    type: yesno
    sql: ${TABLE}."IncludesOneTime" ;;
  }

  dimension: includes_recurring {
    type: yesno
    sql: ${TABLE}."IncludesRecurring" ;;
  }

  dimension: includes_usage {
    type: yesno
    sql: ${TABLE}."IncludesUsage" ;;
  }

  dimension: ns_integration_id {
    type: string
    sql: ${TABLE}."IntegrationId__NS" ;;
  }

  dimension: ns_integration_status {
    type: string
    sql: ${TABLE}."IntegrationStatus__NS" ;;
  }

  dimension_group: invoice {
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
    sql: ${TABLE}."InvoiceDate" ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}."InvoiceNumber" ;;
  }

  dimension_group: last_email_sent {
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
    sql: ${TABLE}."LastEmailSentDate" ;;
  }

  dimension: payment_amount {
    type: number
    sql: ${TABLE}."PaymentAmount" ;;
  }

  dimension: posted_by {
    type: string
    sql: ${TABLE}."PostedBy" ;;
  }

  dimension_group: posted {
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
    sql: ${TABLE}."PostedDate" ;;
  }

  dimension: public_invoice {
    type: string
    sql: ${TABLE}."Public__c" ;;
  }

  dimension: refund_amount {
    type: number
    sql: ${TABLE}."RefundAmount" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."Status" ;;
  }

  dimension: ns_sync_date {
    type: string
    sql: ${TABLE}."SyncDate__NS" ;;
  }

  dimension_group: target {
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
    sql: ${TABLE}."TargetDate" ;;
  }

  dimension: tax_amount {
    type: number
    sql: ${TABLE}."TaxAmount" ;;
  }

  dimension: tax_exempt_amount {
    type: number
    sql: ${TABLE}."TaxExemptAmount" ;;
  }

  dimension: transferred_to_accounting {
    type: string
    sql: ${TABLE}."TransferredToAccounting" ;;
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
    drill_fields: [id]
  }
}
