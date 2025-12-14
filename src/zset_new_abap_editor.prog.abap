*&---------------------------------------------------------------------*
*& Report ZSET_NEW_ABAP_EDITOR
*&---------------------------------------------------------------------*

*&-------------------------------------------------------------------------*
*& DEVELOPER            : Devmmanuel                                       *
*& CREATED AT           : 20.09.2025                                       *
*& FUNCTIONALITY        : Report to configure the new ABAP Editor for the  *
*&                      : current user what run the Transaction/report     *
*& VISITE MY BLOG IN    : https://devmmanuelen.hashnode.dev                *
*&-------------------------------------------------------------------------*

REPORT zset_new_abap_editor.

INCLUDE zset_new_abap_editor_lcd.
INCLUDE zset_new_abap_editor_lci.

    START-OF-SELECTION.

      IF lcl_abap_editor=>user_have_the_new_editor( ).
        MESSAGE 'You have the New ABAP Editor configured by Default' TYPE 'I'.
        RETURN.
      ENDIF.

      lcl_abap_editor=>set_new_editor( ).
