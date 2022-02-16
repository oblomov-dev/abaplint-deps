CLASS cl_shm_area DEFINITION ABSTRACT PUBLIC.

  PUBLIC SECTION.
    CONSTANTS affect_all_servers TYPE c LENGTH 1 VALUE 'A'.
    CONSTANTS default_instance TYPE c LENGTH 1 VALUE 'B'.
    CONSTANTS attach_mode_default TYPE c LENGTH 1 VALUE 'C'.
    CONSTANTS life_context_appserver TYPE c LENGTH 1 VALUE 'D'.
    CONSTANTS attach_mode_wait TYPE c LENGTH 1 VALUE 'E'.
    CONSTANTS attach_mode_wait_2nd_try TYPE c LENGTH 1 VALUE 'F'.
    CONSTANTS affect_local_server TYPE c LENGTH 1 VALUE 'G'.
    CONSTANTS invocation_mode_explicit TYPE c LENGTH 1 VALUE 'G'.

    DATA inst_name TYPE shm_inst_name READ-ONLY.
    DATA client TYPE mandt READ-ONLY.
    DATA properties TYPE shm_properties READ-ONLY.

    METHODS get_root ABSTRACT
      RETURNING
        VALUE(root) TYPE REF TO object
      RAISING
        cx_shm_already_detached.

    METHODS detach
      RAISING
        cx_shm_wrong_handle
        cx_shm_already_detached.

    METHODS detach_commit
      RAISING
        cx_shm_wrong_handle
        cx_shm_already_detached
        cx_shm_secondary_commit
        cx_shm_event_execution_failed
        cx_shm_completion_error.

  PROTECTED SECTION.
    DATA inst_trace_service TYPE REF TO if_shm_trace.
    DATA inst_trace_active  TYPE abap_bool VALUE abap_false.

    METHODS _attach_read71
      IMPORTING
        sneak_mode TYPE abap_bool DEFAULT abap_false
        area_name TYPE shm_area_name
        life_context TYPE shm_life_context
      EXPORTING
        root TYPE REF TO object.

    CLASS-METHODS _detach_area71
      IMPORTING
        area_name TYPE shm_area_name
        client TYPE shm_client
        client_supplied TYPE abap_bool
        client_dependent TYPE abap_bool DEFAULT abap_false
        life_context TYPE shm_life_context
      RETURNING
        VALUE(rc) TYPE shm_rc.

    METHODS _attach_update70
      IMPORTING
        area_name TYPE shm_area_name
        mode TYPE shm_attach_mode
      EXPORTING
        root TYPE REF TO object
      CHANGING
        wait_time TYPE i OPTIONAL.

ENDCLASS.

CLASS cl_shm_area IMPLEMENTATION.

  METHOD _detach_area71.
    RETURN.
  ENDMETHOD.

  METHOD _attach_update70.
    RETURN.
  ENDMETHOD.

  METHOD _attach_read71.
    RETURN.
  ENDMETHOD.

  METHOD detach_commit.
    RETURN.
  ENDMETHOD.

  METHOD detach.
    RETURN.
  ENDMETHOD.

ENDCLASS.