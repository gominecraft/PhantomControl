PhantomControl:
  type: world
  debug: false
  events:
    on system time minutely every:5:
    - foreach <server.list_online_players> as:plr:
      - if <[plr].has_permission[phantomcontrol.disable]>:
        - statistic time_since_rest set 0 player:<[plr]>

