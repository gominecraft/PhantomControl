PhantomControl:
  type: world
  debug: false
  events:
    on system time minutely every:20:
    - foreach <server.list_online_players> as:player:
      - if <[player].has_permission[phantomcontrol.disable]>:
        - statistic time_since_rest set 0
