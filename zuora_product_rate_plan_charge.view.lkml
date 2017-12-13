view: zuora_product_rate_plan_charge {
  sql_table_name: stitch_zuora.zuora_product_rate_plan_charge ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: accounting_code {
    type: string
    sql: ${TABLE}.AccountingCode ;;
  }

  dimension: apply_discount_to {
    type: string
    sql: ${TABLE}.ApplyDiscountTo ;;
  }

  dimension: bill_cycle_type {
    type: string
    sql: ${TABLE}.BillCycleType ;;
  }

  dimension: billing_period {
    type: string
    sql: ${TABLE}.BillingPeriod ;;
  }

  dimension: billing_period_alignment {
    type: string
    sql: ${TABLE}.BillingPeriodAlignment ;;
  }

  dimension: billing_timing {
    type: string
    sql: ${TABLE}.BillingTiming ;;
  }

  dimension: charge_model {
    type: string
    sql: ${TABLE}.ChargeModel ;;
  }

  dimension: charge_type {
    type: string
    sql: ${TABLE}.ChargeType ;;
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

  dimension: default_quantity {
    type: number
    sql: ${TABLE}.DefaultQuantity ;;
  }

  dimension: deferred_rev_account__ns {
    type: string
    sql: ${TABLE}.DeferredRevAccount__NS ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: discount_level {
    type: string
    sql: ${TABLE}.DiscountLevel ;;
  }

  dimension: end_date_condition {
    type: string
    sql: ${TABLE}.EndDateCondition ;;
  }

  dimension: include_children__ns {
    type: string
    sql: ${TABLE}.IncludeChildren__NS ;;
  }

  dimension: included_units {
    type: number
    sql: ${TABLE}.IncludedUnits ;;
  }

  dimension: integration_id__ns {
    type: string
    sql: ${TABLE}.IntegrationId__NS ;;
  }

  dimension: integration_status__ns {
    type: string
    sql: ${TABLE}.IntegrationStatus__NS ;;
  }

  dimension: item_type__ns {
    type: string
    sql: ${TABLE}.ItemType__NS ;;
  }

  dimension: legacy_revenue_reporting {
    type: yesno
    sql: ${TABLE}.LegacyRevenueReporting ;;
  }

  dimension: list_price_base {
    type: string
    sql: ${TABLE}.ListPriceBase ;;
  }

  dimension: min_quantity {
    type: number
    sql: ${TABLE}.MinQuantity ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: number_of_period {
    type: number
    sql: ${TABLE}.NumberOfPeriod ;;
  }

  dimension: overage_calculation_option {
    type: string
    sql: ${TABLE}.OverageCalculationOption ;;
  }

  dimension: overage_unused_units_credit_option {
    type: string
    sql: ${TABLE}.OverageUnusedUnitsCreditOption ;;
  }

  dimension: price_change_option {
    type: string
    sql: ${TABLE}.PriceChangeOption ;;
  }

  dimension: price_increase_percentage {
    type: number
    sql: ${TABLE}.PriceIncreasePercentage ;;
  }

  dimension: product_rate_plan_id {
    type: string
    sql: ${TABLE}.ProductRatePlanId ;;
  }

  dimension: recognized_rev_account__ns {
    type: string
    sql: ${TABLE}.RecognizedRevAccount__NS ;;
  }

  dimension: rev_rec_code {
    type: string
    sql: ${TABLE}.RevRecCode ;;
  }

  dimension: rev_rec_end__ns {
    type: string
    sql: ${TABLE}.RevRecEnd__NS ;;
  }

  dimension: rev_rec_start__ns {
    type: string
    sql: ${TABLE}.RevRecStart__NS ;;
  }

  dimension: rev_rec_template_type__ns {
    type: string
    sql: ${TABLE}.RevRecTemplateType__NS ;;
  }

  dimension: rev_rec_trigger_condition {
    type: string
    sql: ${TABLE}.RevRecTriggerCondition ;;
  }

  dimension: specific_billing_period {
    type: number
    sql: ${TABLE}.SpecificBillingPeriod ;;
  }

  dimension: sync_date__ns {
    type: string
    sql: ${TABLE}.SyncDate__NS ;;
  }

  dimension: tax_code {
    type: string
    sql: ${TABLE}.TaxCode ;;
  }

  dimension: tax_mode {
    type: string
    sql: ${TABLE}.TaxMode ;;
  }

  dimension: taxable {
    type: yesno
    sql: ${TABLE}.Taxable ;;
  }

  dimension: trigger_event {
    type: string
    sql: ${TABLE}.TriggerEvent ;;
  }

  dimension: uom {
    type: string
    sql: ${TABLE}.UOM ;;
  }

  dimension: up_to_periods {
    type: number
    sql: ${TABLE}.UpToPeriods ;;
  }

  dimension: up_to_periods_type {
    type: string
    sql: ${TABLE}.UpToPeriodsType ;;
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

  dimension: usage_record_rating_option {
    type: string
    sql: ${TABLE}.UsageRecordRatingOption ;;
  }

  dimension: use_discount_specific_accounting_code {
    type: yesno
    sql: ${TABLE}.UseDiscountSpecificAccountingCode ;;
  }

  dimension: use_tenant_default_for_price_change {
    type: yesno
    sql: ${TABLE}.UseTenantDefaultForPriceChange ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
