refreshFrequency: 60000
sqliteDb = '$HOME/Library/Group Containers/JLMPQHK86H.com.culturedcode.ThingsMac/Things Database.thingsdatabase/main.sqlite'
todaySql = 'select title from TMTask where status=0'
command: "sqlite3 '#{sqliteDb}' '#{todaySql}' | cut -d '|' -f6"

style: """
  border-radius: 6px
  padding: 0px 20px
  top: 0%
  left: 0px
  color: #fff
  font-family: sans-serif
  font-weight: 100
  opacity: .6

  div
    display: block

  ol
    padding-left: 20px

  .thingslist
    float:left
    white-space: pre
"""

render: -> """
  <div class='things_container'>
    <div class='thingslist'></div>
  </div>
"""

update: (output, domEl) ->
  $(domEl).find('.thingslist').html(output)