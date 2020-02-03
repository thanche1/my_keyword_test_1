*** Settings ***
Library    			SSHLibrary
Library 			OperatingSystem
Library 			/home/than/robot_tests/create_my_keywords/myKeywords/UserKeywords.py
Suite Setup    		open_connection_and_login
Suite Teardown   	Close All Connections




*** Variables ***

${HOST}				localhost
${USERNAME}			than
${PASSWORD}			wsxxsw
${VAR}				hello there!




*** Test Cases ***
Testing my keywords
	My Own keyword          ${foldername}






*** Keywords ***
open_connection_and_login
   	Open Connection     	${HOST}
   	Login               	${USERNAME}        ${PASSWORD}
My Own Keyword
	[Arguments]			${foldername}
	create_folder		${foldername}
	Log 	"Task completed"


