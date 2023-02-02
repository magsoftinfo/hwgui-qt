/*

  HWGUIQt Project - Test Program

  Copyright (c) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/hwgui-qt

*/

#include "hwguiqt.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oDialog
   LOCAL oDatePicker
   LOCAL dData := date()

   SET DATE TO BRITISH
   SET CENTURY ON

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGDatePicker" SIZE 640,480

   @ 10,10 GET DATEPICKER oDatePicker VAR dData SIZE 80,30

   ACTIVATE DIALOG oDialog

   hwgqt_msginfo(dtoc(dData))

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
