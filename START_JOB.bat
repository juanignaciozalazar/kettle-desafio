@echo off

set /p "USER_INPUT=Ingrese la fecha de entrada con el formato aaaa-mm-dd hh:mm:ss.fffff: " 


set "PENTAHO_DIR=H:\pentaho\stuff\desafio_inicial"
set "Pentaho_Job=job_date_report.kjb"

set "path=H:\pentaho\pdi-ce-9.4.0.0-343\data-integration"
Kitchen.bat /file:"%PENTAHO_DIR%\%Pentaho_Job%" /log:"%path%\Logs\Interfases_MI.log" /level:basic "-param:INPUT_DATE=%USER_INPUT%"