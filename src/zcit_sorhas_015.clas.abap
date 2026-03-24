CLASS zcit_sorhas_015 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcit_sorhas_015 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


  DATA(flights) = NEW lcl_flights( ).

  DO 20000 TIMES.
    flights->access_standard( ).
  ENDDO.

  DO 20000 TIMES.
    flights->access_sorted( ).
  ENDDO.

  DO 20000 TIMES.
    flights->access_hashed( ).
  ENDDO.

  out->write( |Done| ).

ENDMETHOD.

ENDCLASS.
