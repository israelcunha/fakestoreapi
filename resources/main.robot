*** Settings ***
# BIBLIOTECAS
Library  FakerLibrary  locale=pt_BR
Library  OperatingSystem
Library  RequestsLibrary
Library  DateTime
Library  String
Library  DatabaseLibrary
Library  JsonValidator
Library  JSONLibrary

# CONFIGURAÇÕES DE EXECUÇÃO
Resource  ../resources/request.robot

# PAGES
Resource    ../keywords/fakestore.robot