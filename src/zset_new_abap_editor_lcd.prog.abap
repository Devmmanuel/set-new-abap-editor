*&---------------------------------------------------------------------*
*& Include          ZSET_NEW_ABAP_EDITOR_LCD
*&---------------------------------------------------------------------*

*&-------------------------------------------------------------------------*
*& DEVELOPER            : Devmmanuel                                       *
*& CREATED AT           : 20.09.2025                                       *
*& FUNCTIONALITY        : Report to configure the new ABAP Editor for the  *
*&                      : current user what run the Transaction/report     *
*& MORE ABOUT SAP IN    : https://devmmanuelen.hashnode.dev                *
*&-------------------------------------------------------------------------*

CLASS lcl_abap_editor DEFINITION.

  PUBLIC SECTION.

    CLASS-METHODS user_have_the_new_editor
      RETURNING VALUE(rv_new_editor_configurated) TYPE abap_bool.

    CLASS-METHODS set_new_editor.

ENDCLASS.
