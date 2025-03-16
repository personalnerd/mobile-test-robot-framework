*** Settings ***
Resource    ../common.resource

*** Variables ***
## Lista de tarefas
${TASKS_PAGE_TITLE}    id = com.nweave.todo:id/selected_folder_name
${TASK_LIST_EMPTY}     id = com.nweave.todo:id/task_list_empty
${ADD_TASK}            id = com.nweave.todo:id/task_list_add_task_fab_button
${TODAYS_TASKS_TITLE}  id = com.nweave.todo:id/header_title
${TASK_TITLE}          id = com.nweave.todo:id/textView_task_title2
${TASK_ALARM}          id = com.nweave.todo:id/image_task_alarm2
${CHECKBOX_TASK}       id = com.nweave.todo:id/checkBox_status3

## Pop-up de contexto
${CONTEXT_POP-UP}      id = com.nweave.todo:id/dialog_content_scroll_layout
${POP-UP_DELETE_BTN}   id = com.nweave.todo:id/deleteTaskEditMenuButton
${CONFIRM_OK_BTN}      id = com.nweave.todo:id/okButton

## Detalhes da tarefa
${ADD_TASK_SCREEN_TITLE}    id = com.nweave.todo:id/add_task_screen_title
${TASK_NAME_EDIT}           id = com.nweave.todo:id/add_task_name_edit_text
${TASK_DONE_BTN}            id = com.nweave.todo:id/add_task_done_button
${TASK_DATE}                id = com.nweave.todo:id/add_task_due_date_value
${TASK_REMINDER}            id = com.nweave.todo:id/reminder_state_textview
${TASK_REPEAT}              id = com.nweave.todo:id/repeated_state_textview
${REMOVE_DUE_DATE_BTN}      id = com.nweave.todo:id/add_task_remove_duedate

*** Keywords ***
que eu estou na tela inicial
    Wait Until Element Is Visible    ${TASKS_PAGE_TITLE}
    AppiumLibrary.Element Text Should Be    ${TASKS_PAGE_TITLE}    All Tasks

o App deve exibir a lista de tarefas vazia
    Page Should Contain Element    ${TASK_LIST_EMPTY}

o botão de adicionar tarefa deve estar visível
    AppiumLibrary.Element Should Be Visible    ${ADD_TASK}

eu clico no botão Adicionar Tarefa
    Click Element    ${ADD_TASK}

preencho o título com "${titulo}"
    Wait Until Element Is Visible    ${TASK_NAME_EDIT}
    AppiumLibrary.Input Text    ${TASK_NAME_EDIT}    ${titulo}

clico em Salvar
    Click Element    ${TASK_DONE_BTN}

o App deve exibir a lista de tarefas
    que eu estou na tela inicial

deve exibir a tarefa "${titulo}" na lista "${lista}"
    Wait Until Element Is Visible    ${TODAYS_TASKS_TITLE}
    AppiumLibrary.Element Text Should Be    ${TODAYS_TASKS_TITLE}    ${lista}
    Wait Until Element Is Visible    ${TASK_TITLE}
    AppiumLibrary.Element Text Should Be    ${TASK_TITLE}    ${titulo}

deve exibir o ícone de lembrete na tarefa "${titulo}"
    AppiumLibrary.Element Should Be Visible    ${TASK_ALARM}

não deve exibir o ícone de lembrete na tarefa "${titulo}"
    AppiumLibrary.Page Should Not Contain Element    ${TASK_ALARM}

eu clico na tarefa "${titulo}"
    Click Element    xpath=//android.widget.TextView[@text="${titulo}"]

o App deve exibir os detalhes da tarefa
    Wait Until Element Is Visible    ${ADD_TASK_SCREEN_TITLE}
    AppiumLibrary.Element Text Should Be    ${ADD_TASK_SCREEN_TITLE}    Details

o título da tarefa deve ser "${titulo}"
    AppiumLibrary.Element Text Should Be    ${TASK_NAME_EDIT}    ${titulo}

a data da tarefa deve ser hoje
    ${data_hoje}    Get Current Date    result_format=%d/%m/%Y
    AppiumLibrary.Element Text Should Be    ${TASK_DATE}    ${data_hoje}

o lembrete deve ser "${lembrete}"
    AppiumLibrary.Element Text Should Be    ${TASK_REMINDER}    ${lembrete}

a repetição deve ser "${repeticao}"
    AppiumLibrary.Element Text Should Be    ${TASK_REPEAT}    ${repeticao}

clico no botão de excluir data
    Wait Until Element Is Visible    ${REMOVE_DUE_DATE_BTN}
    Click Element    ${REMOVE_DUE_DATE_BTN}

eu clico na caixa de seleção da tarefa "${titulo}"
    Click Element    ${CHECKBOX_TASK}

eu clico e seguro na tarefa "${titulo}"
    custom.LongPress    xpath=//android.widget.TextView[@text="${titulo}"]

aparecer um pop-up de contexto
    Wait Until Element Is Visible    ${CONTEXT_POP-UP}

eu clico em Excluir
    Click Element    ${POP-UP_DELETE_BTN}

aparecer um pop-up de confirmação
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Delete Task"]

eu clico em OK
    Wait Until Element Is Visible    ${CONFIRM_OK_BTN}
    Click Element    ${CONFIRM_OK_BTN}