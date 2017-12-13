view: zuora_account {
  sql_table_name: stitch_zuora.zuora_account ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}.AccountNumber ;;
  }

  dimension: allow_invoice_edit {
    type: yesno
    sql: ${TABLE}.AllowInvoiceEdit ;;
  }

  dimension: auto_pay {
    type: yesno
    sql: ${TABLE}.AutoPay ;;
  }

  dimension: balance {
    type: number
    sql: ${TABLE}.Balance ;;
  }

  dimension: batch {
    type: string
    sql: ${TABLE}.Batch ;;
  }

  dimension: bcd_setting_option {
    type: string
    sql: ${TABLE}.BcdSettingOption ;;
  }

  dimension: bill_cycle_day {
    type: number
    sql: ${TABLE}.BillCycleDay ;;
  }

  dimension: bill_to_id {
    type: string
    sql: ${TABLE}.BillToId ;;
  }

  dimension: category__c {
    type: string
    sql: ${TABLE}.Category__c ;;
  }

  dimension: communication_profile_id {
    type: string
    sql: ${TABLE}.CommunicationProfileId ;;
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

  dimension: credit_balance {
    type: number
    sql: ${TABLE}.CreditBalance ;;
  }

  dimension: crm_id {
    type: string
    sql: ${TABLE}.CrmId ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: customer_id__ns {
    type: string
    sql: ${TABLE}.CustomerId__NS ;;
  }

  dimension: customer_type__ns {
    type: string
    sql: ${TABLE}.CustomerType__NS ;;
  }

  dimension: default_payment_method_id {
    type: string
    sql: ${TABLE}.DefaultPaymentMethodId ;;
  }

  dimension: integration_id__ns {
    type: string
    sql: ${TABLE}.IntegrationId__NS ;;
  }

  dimension: integration_status__ns {
    type: string
    sql: ${TABLE}.IntegrationStatus__NS ;;
  }

  dimension: invoice_delivery_prefs_email {
    type: yesno
    sql: ${TABLE}.InvoiceDeliveryPrefsEmail ;;
  }

  dimension: invoice_delivery_prefs_print {
    type: yesno
    sql: ${TABLE}.InvoiceDeliveryPrefsPrint ;;
  }

  dimension: invoice_template_id {
    type: string
    sql: ${TABLE}.InvoiceTemplateId ;;
  }

  dimension_group: last_invoice {
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
    sql: ${TABLE}.LastInvoiceDate ;;
  }

  dimension: legacy_billing_id__c {
    type: string
    sql: ${TABLE}.LegacyBillingID__c ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}.ParentId ;;
  }

  dimension: payment_term {
    type: string
    sql: ${TABLE}.PaymentTerm ;;
  }

  dimension: purchase_order_number {
    type: string
    sql: ${TABLE}.PurchaseOrderNumber ;;
  }

  dimension: sold_to_id {
    type: string
    sql: ${TABLE}.SoldToId ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: sub_accounts__c {
    type: string
    sql: ${TABLE}.SubAccounts__c ;;
  }

  dimension: sync_date__ns {
    type: string
    sql: ${TABLE}.SyncDate__NS ;;
  }

  dimension: syncto_net_suite__ns {
    type: string
    sql: ${TABLE}.SynctoNetSuite__NS ;;
  }

  dimension: tax_company_code {
    type: string
    sql: ${TABLE}.TaxCompanyCode ;;
  }

  dimension: tax_exempt_certificate_id {
    type: string
    sql: ${TABLE}.TaxExemptCertificateID ;;
  }

  dimension: tax_exempt_description {
    type: string
    sql: ${TABLE}.TaxExemptDescription ;;
  }

  dimension: tax_exempt_issuing_jurisdiction {
    type: string
    sql: ${TABLE}.TaxExemptIssuingJurisdiction ;;
  }

  dimension: tax_exempt_status {
    type: string
    sql: ${TABLE}.TaxExemptStatus ;;
  }

  dimension: total_invoice_balance {
    type: number
    sql: ${TABLE}.TotalInvoiceBalance ;;
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

  dimension: uuidlook_up__c {
    type: string
    sql: ${TABLE}.UUIDLookUp__c ;;
  }

  dimension: vatid {
    type: string
    sql: ${TABLE}.VATId ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
