CLASS zcit_game_22ee015 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PRIVATE SECTION.
    TYPES: BEGIN OF ty_player,
             player_id TYPE i,
             username  TYPE string,
             score     TYPE i,
           END OF ty_player.

    DATA gt_players TYPE STANDARD TABLE OF ty_player.

    METHODS:
      add_player
        IMPORTING
          iv_id    TYPE i
          iv_name  TYPE string
          iv_score TYPE i,
      display_leaderboard
        IMPORTING
          out TYPE REF TO if_oo_adt_classrun_out.

ENDCLASS.

CLASS zcit_game_22ee015 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    add_player( iv_id = 1  iv_name = 'ShadowNinja'   iv_score = 130 ).
    add_player( iv_id = 2  iv_name = 'PixelWarrior'  iv_score = 90  ).
    add_player( iv_id = 3  iv_name = 'DragonSlayer'  iv_score = 150 ).
    add_player( iv_id = 4  iv_name = 'CyberKnight'   iv_score = 70  ).
    display_leaderboard( out ).
  ENDMETHOD.

  METHOD add_player.
    DATA(ls_player) = VALUE ty_player(
      player_id = iv_id
      username  = iv_name
      score     = iv_score ).
    APPEND ls_player TO gt_players.
  ENDMETHOD.

  METHOD display_leaderboard.
    SORT gt_players BY score DESCENDING.
    out->write( '--- Tournament Leaderboard ---' ).
    LOOP AT gt_players INTO DATA(ls_player).
      DATA(lv_rank) = sy-tabix.
      DATA(lv_cat) = COND string(
        WHEN ls_player-score > 120 THEN 'Elite'
        WHEN ls_player-score > 80  THEN 'Pro'
        ELSE 'Beginner' ).
      out->write( |Rank: { lv_rank }  Player: { ls_player-username }  Score: { ls_player-score }  --> { lv_cat }| ).
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
