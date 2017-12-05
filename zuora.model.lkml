connection: "joyent"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: zuora_account {}

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
