connection: "snowflake_twitter"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# four functions:
# DATABASE_STORAGE_USAGE_HISTORY
# STAGE_STORAGE_USAGE_HISTORY
# WAREHOUSE_LOAD_HISTORY
# WAREHOUSE_METERING_HISTORY

explore: query_history {

  description: "analyze query history"
  sql_always_where:  ${query_id} = 20;;
}

explore: tables {
#   sql_always_where: ${tables.table_name} = 'test' ;;
  description: "explore table/column metadata"
  join: columns {
    sql_on: ${tables.table_schema} = ${columns.table_schema} and ${columns.table_name} = ${tables.table_name} and ${columns.table_catalog} = ${tables.table_catalog} and ;;
  }
  join: table_storage_metrics {
    sql_on: ${table_storage_metrics.table_name} = ${tables.table_name} and ${table_storage_metrics.table_schema} = ${tables.table_schema} ;;
  }
}

explore: warehouse_load_history {
 description:"monitor times associated with warehouse loading"
}

explore: load_history {
  description: "analyze data loads into tables"
}
