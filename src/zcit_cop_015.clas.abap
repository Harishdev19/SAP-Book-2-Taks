CLASS zcit_cop_015 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcit_cop_015 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
DATA result TYPE i.

DATA text      TYPE string VALUE `  ABAP  `.
DATA substring TYPE string VALUE `AB`.
DATA offset    TYPE i      VALUE 1.

out->write( |Text      = `{ text }`| ).
out->write( |Substring = `{ substring }`| ).
out->write( |Offset    = { offset }| ).
out->write( `---------------------------` ).

result = strlen( text ).
out->write( |strlen result = { result }| ).

result = numofchar( text ).
out->write( |numofchar result = { result }| ).

result = count(
            val = text
            sub = substring
            off = offset ).
out->write( |count result = { result }| ).

result = find(
            val = text
            sub = substring
            off = offset ).
out->write( |find result = { result }| ).

result = count_any_of(
            val = text
            sub = substring
            off = offset ).
out->write( |count_any_of result = { result }| ).

result = find_any_of(
            val = text
            sub = substring
            off = offset ).
out->write( |find_any_of result = { result }| ).

result = count_any_not_of(
            val = text
            sub = substring
            off = offset ).
out->write( |count_any_not_of result = { result }| ).

result = find_any_not_of(
            val = text
            sub = substring
            off = offset ).
out->write( |find_any_not_of result = { result }| ).
  ENDMETHOD.
ENDCLASS.
