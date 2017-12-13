connection: "joyent"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: zuora_account {
  description: "Zuora Accounts"
  group_label: "Joyent Public Cloud"
  label: "Zuora Accounts"
  join: zuora_contact{
    sql_on: ${zuora_contact.account_id} = ${zuora_account.id} ;;
    type: left_outer
    relationship: many_to_one
  }
  join: zuora_invoice{
    sql_on: ${zuora_invoice.account_id} = ${zuora_account.id} ;;
    type: left_outer
    relationship: many_to_one
  }
  join: zuora_invoice_adjustment {
    sql_on: ${zuora_invoice_adjustment.account_id} = ${zuora_account.id} ;;
    type: left_outer
    relationship: many_to_one
  }
  join: zuora_invoice_item {
    sql_on: ${zuora_invoice_item.invoice_id} = ${zuora_invoice.id} ;;
    type: left_outer
    relationship: many_to_one
  }
}

explore: zuora_contact {}

explore: zuora_invoice {}

explore: zuora_invoice_adjustment {}

explore: zuora_invoice_item {}

explore: zuora_invoice_payment {}

explore: zuora_product {}

explore: zuora_product_rate_plan {}

explore: zuora_product_rate_plan_charge {}

explore: zuora_product_rate_plan_charge_tier {}

explore: zuora_unit_of_measure {}
