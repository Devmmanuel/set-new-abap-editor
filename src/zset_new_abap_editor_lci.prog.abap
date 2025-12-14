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

CLASS lcl_abap_editor IMPLEMENTATION.

  METHOD user_have_the_new_editor.

    DATA s_user_settings TYPE rseumod.

    CALL FUNCTION 'RS_WORKBENCH_CUSTOMIZING'
      EXPORTING
        suppress_dialog = abap_true
      IMPORTING
        setting         = s_user_settings.

    IF  s_user_settings-pcmode    = '4'
    AND s_user_settings-editcntrl = 'A'.
      RETURN abap_true.
    ENDIF.

  ENDMETHOD.

  METHOD set_new_editor.

    DATA t_new_user_settings TYPE wbcustom_setttings.

    t_new_user_settings =  VALUE wbcustom_setttings(
      ( name = 'PCMODE'    value = '4' )
      ( name = 'EDITCNTRL' value = 'A' ) ).

    CALL FUNCTION 'RS_WB_CUSTOMIZING_SET_VALUES'
      EXPORTING
        settings = t_new_user_settings.

    MESSAGE 'The New ABAP Editor has been configurated for the user' && | | && sy-uname TYPE 'S'.

  ENDMETHOD.

ENDCLASS.
