connection: "a_testhub"

# include all the views
include: "/views/**/*.view"

datagroup: won_git_to_bare_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: won_git_to_bare_test_default_datagroup

explore: orders {}

explore: persons {}

explore: returns {
  join: orders {
    type: left_outer
    sql_on: ${returns.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }
}

explore: sales {}
