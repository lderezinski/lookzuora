view: zuora_contact {
  sql_table_name: stitch_zuora.zuora_contact ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }


  dimension: account_id {
    type: string
    sql: ${TABLE}.AccountId ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}.Address1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.Address2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
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

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}.MobilePhone ;;
  }

  dimension: nick_name {
    type: string
    sql: ${TABLE}.NickName ;;
  }

  dimension: other_phone {
    type: string
    sql: ${TABLE}.OtherPhone ;;
  }

  dimension: other_phone_type {
    type: string
    sql: ${TABLE}.OtherPhoneType ;;
  }

  dimension: personal_email {
    type: string
    sql: ${TABLE}.PersonalEmail ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
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

  dimension: work_email {
    type: string
    sql: ${TABLE}.WorkEmail ;;
  }

  dimension: work_phone {
    type: string
    sql: ${TABLE}.WorkPhone ;;
  }

  measure: count {
    type: count
    drill_fields: [id, first_name, last_name, nick_name]
  }
}
