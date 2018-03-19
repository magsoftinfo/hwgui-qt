/*

  HWGUIQt - m�dulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifdef __QT4XHB__
#include "qt4xhb.ch"
#endif
#ifdef __QT5XHB__
#include "qt5xhb.ch"
#endif
#include "hbclass.ch"

CLASS HWGDial INHERIT HWGControl

   METHOD new
   METHOD activate
   METHOD value
   METHOD setValue
   METHOD setRange
   METHOD notchesVisible
   METHOD setNotchesVisible

ENDCLASS

METHOD new ( oParent, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, cStyleSheet, oFont, ;
             nValue, nMinimum, nMaximum, lNotchesVisible, ;
             bOnInit, lDisabled ) CLASS HWGDial

   IF valtype(oParent) == "O"
      ::oQt := QDial():new(oParent:oQt)
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QDial():new(HWGFILO():last():oQt)
      ELSE
         ::oQt := QDial():new()
      ENDIF
   ENDIF

   IF valtype(nX) == "N" .AND. valtype(nY) == "N"
      ::oQt:move(nX,nY)
   ENDIF

   IF valtype(nWidth) == "N" .AND. valtype(nHeight) == "N"
      ::oQt:resize(nWidth,nHeight)
   ENDIF

   IF valtype(cToolTip) == "C"
      ::oQt:setToolTip(cToolTip)
   ENDIF

   IF valtype(cStatusTip) == "C"
      ::oQt:setStatusTip(cStatusTip)
   ENDIF

   IF valtype(cWhatsThis) == "C"
      ::oQt:setWhatsThis(cWhatsThis)
   ENDIF

   IF valtype(cStyleSheet) == "C"
      ::oQt:setStyleSheet(cStyleSheet)
   ENDIF

   IF valtype(oFont) == "O"
      ::oQt:setFont(oFont:oQt)
   ENDIF

   IF valtype(nValue) == "N"
      ::oQt:setValue(nValue)
   ENDIF

   IF valtype(nMinimum) == "N" .AND. valtype(nMaximum) == "N"
      ::oQt:setRange(nMinimum,nMaximum)
   ENDIF

   IF valtype(lNotchesVisible) == "L"
      ::oQt:setNotchesVisible(lNotchesVisible)
   ENDIF

   IF valtype(bOnInit) == "B"
      ::bInit := bOnInit
   ENDIF

   IF valtype(lDisabled) == "L"
      IF lDisabled
         ::oQt:setEnabled(.F.)
      ENDIF
   ENDIF

   // atualiza propriedades do objeto

   ::nLeft   := ::oQt:x()
   ::nTop    := ::oQt:y()
   ::nWidth  := ::oQt:width()
   ::nHeight := ::oQt:height()

   ::activate()

RETURN self

METHOD activate () CLASS HWGDial

   IF valtype(::bInit) == "B"
      eval(::bInit)
   ENDIF

RETURN NIL

METHOD value () CLASS HWGDial
RETURN ::oQt:value()

METHOD setValue (nValue) CLASS HWGDial

   IF valtype(nValue) == "N"
      ::oQt:setValue(nValue)
   ENDIF

RETURN NIL

METHOD SetRange (nMinimum,nMaximum) CLASS HWGDial

   IF valtype(nMinimum) == "N" .AND. valtype(nMaximum) == "N"
      ::oQt:setRange(nMinimum,nMaximum)
   ENDIF

RETURN NIL

METHOD notchesVisible CLASS HWGDial
RETURN ::oQt:notchesVisible()

METHOD setNotchesVisible (lValue) CLASS HWGDial

   IF valtype(lValue) == "L"
      ::oQt:setNotchesVisible(lValue)
   ENDIF

RETURN NIL
