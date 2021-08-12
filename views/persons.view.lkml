view: persons {
  sql_table_name: `Chat.Persons`
    ;;
  drill_fields: [person_id]

  dimension: person_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Person_ID ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.Firstname ;;
  }

  dimension: office {
    type: string
    sql: ${TABLE}.Office ;;
  }

  dimension: persons {
    type: string
    sql: ${TABLE}.Persons ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  measure: count {
    type: count
    drill_fields: [person_id, firstname]
  }
}
