view: warehouse_load_history {
sql_table_name: table(information_schema.WAREHOUSE_LOAD_HISTORY()) ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: start_time {
    type: time
    sql: ${TABLE}.START_TIME ;;
  }

  dimension_group: end_time {
    type: time
    sql: ${TABLE}.END_TIME ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}.WAREHOUSE_NAME ;;
  }

  dimension: avg_running {
    type: number
    sql: ${TABLE}.AVG_RUNNING ;;
  }

  dimension: avg_queued_load {
    type: number
    sql: ${TABLE}.AVG_QUEUED_LOAD ;;
  }

  dimension: avg_queued_provisioning {
    type: number
    sql: ${TABLE}.AVG_QUEUED_PROVISIONING ;;
  }

  dimension: avg_blocked {
    type: number
    sql: ${TABLE}.AVG_BLOCKED ;;
  }

  set: detail {
    fields: [
      start_time_time,
      end_time_time,
      warehouse_name,
      avg_running,
      avg_queued_load,
      avg_queued_provisioning,
      avg_blocked
    ]
  }
}
