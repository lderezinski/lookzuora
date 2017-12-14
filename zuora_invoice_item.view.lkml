view: zuora_invoice_item {
  sql_table_name: stitch_zuora.zuora_invoice_item ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."Id" ;;
  }

   dimension: accounting_code {
    type: string
    sql: ${TABLE}."AccountingCode" ;;
  }

  dimension: applied_to_charge_number {
    type: string
    sql: ${TABLE}."AppliedToChargeNumber" ;;
  }

  dimension: applied_to_invoice_item_id {
    type: string
    sql: ${TABLE}."AppliedToInvoiceItemId" ;;
  }

  dimension: charge_amount {
    type: number
    sql: ${TABLE}."ChargeAmount" ;;
  }

  dimension_group: charge {
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
    sql: ${TABLE}."ChargeDate" ;;
  }

  dimension: charge_description {
    type: string
    sql: ${TABLE}."ChargeDescription" ;;
  }

  dimension: charge_id {
    type: string
    sql: ${TABLE}."ChargeId" ;;
  }

  dimension: charge_name {
    type: string
    sql: ${TABLE}."ChargeName" ;;
  }

  dimension: charge_number {
    type: string
    sql: ${TABLE}."ChargeNumber" ;;
  }

  dimension: charge_type {
    type: string
    sql: ${TABLE}."ChargeType" ;;
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

  dimension: ns_integration_id {
    type: string
    sql: ${TABLE}."IntegrationId__NS" ;;
  }

  dimension: ns_integration_status {
    type: string
    sql: ${TABLE}."IntegrationStatus__NS" ;;
  }

  dimension: invoice_id {
    type: string
    sql: ${TABLE}."InvoiceId" ;;
  }

  dimension: processing_type {
    type: number
    sql: ${TABLE}."ProcessingType" ;;
  }

  dimension: product_description {
    type: string
    sql: ${TABLE}."ProductDescription" ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}."ProductId" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."ProductName" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."Quantity" ;;
  }

  dimension: rate_plan_charge_id {
    type: string
    sql: ${TABLE}."RatePlanChargeId" ;;
  }

  dimension: rev_rec_code {
    type: string
    sql: ${TABLE}."RevRecCode" ;;
  }

  dimension_group: rev_rec_start {
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
    sql: ${TABLE}."RevRecStartDate" ;;
  }

  dimension: rev_rec_trigger_condition {
    type: string
    sql: ${TABLE}."RevRecTriggerCondition" ;;
  }

  dimension_group: service_end {
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
    sql: ${TABLE}."ServiceEndDate" ;;
  }

  dimension_group: service_start {
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
    sql: ${TABLE}."ServiceStartDate" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."SKU" ;;
  }

  dimension: subscription_id {
    type: string
    sql: ${TABLE}."SubscriptionId" ;;
  }

  dimension: subscription_number {
    type: string
    sql: ${TABLE}."SubscriptionNumber" ;;
  }

  dimension: ns_sync_date {
    type: string
    sql: ${TABLE}."SyncDate__NS" ;;
  }

  dimension: tax_amount {
    type: number
    sql: ${TABLE}."TaxAmount" ;;
  }

  dimension: tax_code {
    type: string
    sql: ${TABLE}."TaxCode" ;;
  }

  dimension: tax_exempt_amount {
    type: number
    sql: ${TABLE}."TaxExemptAmount" ;;
  }

  dimension: tax_mode {
    type: string
    sql: ${TABLE}."TaxMode" ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}."UnitPrice" ;;
  }

  dimension: uom {
    type: string
    sql: ${TABLE}."UOM" ;;
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
    drill_fields: [id, product_name, charge_name]
  }
  measure: total_qnt {
    type: sum
    sql: ${quantity} ;;
  }
  measure: total_amount {
    type: sum
    value_format: "$#,##0.00"
    sql: ${charge_amount} ;;
  }
}
