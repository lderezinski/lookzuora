view: zuora_invoice_payment {
  sql_table_name: stitch_zuora.zuora_invoice_payment ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."Id" ;;
  }


  dimension: amount {
    type: number
    sql: ${TABLE}."Amount" ;;
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

  dimension: invoice_id {
    type: string
    sql: ${TABLE}."InvoiceId" ;;
  }

  dimension: payment_id {
    type: string
    sql: ${TABLE}."PaymentId" ;;
  }

  dimension: refund_amount {
    type: number
    sql: ${TABLE}."RefundAmount" ;;
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
