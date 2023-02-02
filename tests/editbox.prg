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
   LOCAL oEditBox

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de di�logo" AT 300,300 SIZE 320,240

   @ 20,20 EDITBOX oEditBox CAPTION "teste da classe HWGEditBox" SIZE 320-40,240-40

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
