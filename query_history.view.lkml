view: query_history {
  sql_table_name: table(information_schema.query_history()) ;;
#   derived_table: {
#     sql: select * from table(information_schema.query_history({% date_start %},{% date_end %})) ;;
#   }
  measure: count {
    type: count
#     drill_fields: [detail*]
  }

  dimension: query_id {
    type: string
    sql: ${TABLE}.QUERY_ID ;;
  }

  dimension: query_text {
    type: string
    sql: ${TABLE}.QUERY_TEXT ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}.DATABASE_NAME ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}.SCHEMA_NAME ;;
  }

  dimension: query_type {
    type: string
    sql: ${TABLE}.QUERY_TYPE ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}.SESSION_ID ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.USER_NAME ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.ROLE_NAME ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}.WAREHOUSE_NAME ;;
  }

  dimension: warehouse_size {
    type: string
    sql: ${TABLE}.WAREHOUSE_SIZE ;;
  }

  dimension: warehouse_type {
    type: string
    sql: ${TABLE}.WAREHOUSE_TYPE ;;
  }

  dimension: query_tag {
    type: string
    sql: ${TABLE}.QUERY_TAG ;;
  }

  dimension: execution_status {
    type: string
    sql: ${TABLE}.EXECUTION_STATUS ;;
  }

  dimension: error_code {
    type: number
    sql: ${TABLE}.ERROR_CODE ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.ERROR_MESSAGE ;;
  }

  dimension_group: start_time {
    type: time
    sql: ${TABLE}.START_TIME ;;
  }

  dimension_group: end_time {
    type: time
    sql: ${TABLE}.END_TIME ;;
  }

  dimension: total_elapsed_time {
    type: number
    sql: ${TABLE}.TOTAL_ELAPSED_TIME ;;
  }

  dimension: compilation_time {
    type: number
    sql: ${TABLE}.COMPILATION_TIME ;;
  }

  dimension: execution_time {
    type: number
    sql: ${TABLE}.EXECUTION_TIME ;;
  }

  dimension: queued_provisioning_time {
    type: number
    sql: ${TABLE}.QUEUED_PROVISIONING_TIME ;;
  }

  dimension: queued_repair_time {
    type: number
    sql: ${TABLE}.QUEUED_REPAIR_TIME ;;
  }

  dimension: queued_overload_time {
    type: number
    sql: ${TABLE}.QUEUED_OVERLOAD_TIME ;;
  }

  dimension: transaction_blocked_time {
    type: number
    sql: ${TABLE}.TRANSACTION_BLOCKED_TIME ;;
  }
}
