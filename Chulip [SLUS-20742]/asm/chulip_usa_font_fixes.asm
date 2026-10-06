.ps2


.open "Chulip (USA)/SLUS_207.42", 0xFF000

; To print ASCII characters, the game converts them to S-JIS "equivalents".
; Below are more appropriate choices for conversion.
.org 0x001A3C4C :: .halfword 0x818D ; " to ″ instead of “
.org 0x001A3C56 :: .halfword 0x818C ; ' to ′ instead of ｀
.org 0x001A3C60 :: .halfword 0x8143 ; , to ， instead of 、
.org 0x001A3CBE :: .halfword 0x816D ; [ to ［ instead of 【
.org 0x001A3CC2 :: .halfword 0x816E ; ] to ］ instead of 】
; Are the ones below even used?
;.org 0x001A3CFE :: .halfword 0x816F; { to ｛ instead of 『
;.org 0x001A3D02 :: .halfword 0x8170 ; } to ｝ instead of 』

.close


.open "Chulip (USA)/DAT/SYSTEM.BIN", 0x0

; Better values for VWF. There seems to be no rhyme or reason behind the original values.
; These new values are equal to the pixel width of the character bitmap + 1px.
; Only values for ASCII characters were changed and some of those stayed the same as in original.
.org 0x00000A86 :: .byte 10 ; ！
.org 0x00002E26 :: .byte 13 ; ″
.org 0x00006136 :: .byte 20 ; ％
.org 0x00006396 :: .byte 19 ; ＆
.org 0x000058E6 :: .byte  9 ; ′
.org 0x00003086 :: .byte 12 ; （
.org 0x000031B6 :: .byte 12 ; ）
.org 0x000064C6 :: .byte 16 ; ＊
.org 0x000045E6 :: .byte 19 ; ＋
.org 0x00000366 :: .byte  8 ; ，
.org 0x00004716 :: .byte 19 ; −
.org 0x00000496 :: .byte  9 ; ．
.org 0x00002376 :: .byte 24 ; ／
.org 0x0000AE66 :: .byte 18 ; ０
.org 0x0000AF96 :: .byte 10 ; １
.org 0x0000B0C6 :: .byte 17 ; ２
.org 0x0000B1F6 :: .byte 17 ; ３
.org 0x0000B326 :: .byte 20 ; ４
.org 0x0000B456 :: .byte 18 ; ５
.org 0x0000B586 :: .byte 17 ; ６
.org 0x0000B6B6 :: .byte 17 ; ７
.org 0x0000B7E6 :: .byte 17 ; ８
.org 0x0000B916 :: .byte 17 ; ９
.org 0x000006F6 :: .byte  8 ; ：
.org 0x00000826 :: .byte  8 ; ；
.org 0x00004E36 :: .byte 18 ; ＜
.org 0x00004BD6 :: .byte 19 ; ＝
.org 0x00004F66 :: .byte 18 ; ＞
.org 0x00000956 :: .byte 16 ; ？
.org 0x0000BA46 :: .byte 21 ; Ａ
.org 0x0000BB76 :: .byte 18 ; Ｂ
.org 0x0000BCA6 :: .byte 18 ; Ｃ
.org 0x0000BDD6 :: .byte 19 ; Ｄ
.org 0x0000BF06 :: .byte 19 ; Ｅ
.org 0x0000C036 :: .byte 18 ; Ｆ
.org 0x0000C166 :: .byte 20 ; Ｇ
.org 0x0000C296 :: .byte 19 ; Ｈ
.org 0x0000C3C6 :: .byte  9 ; Ｉ
.org 0x0000C4F6 :: .byte 17 ; Ｊ
.org 0x0000C626 :: .byte 20 ; Ｋ
.org 0x0000C756 :: .byte 19 ; Ｌ
.org 0x0000C886 :: .byte 22 ; Ｍ
.org 0x0000C9B6 :: .byte 22 ; Ｎ
.org 0x0000CAE6 :: .byte 20 ; Ｏ
.org 0x0000CC16 :: .byte 18 ; Ｐ
.org 0x0000CD46 :: .byte 21 ; Ｑ
.org 0x0000CE76 :: .byte 21 ; Ｒ
.org 0x0000CFA6 :: .byte 18 ; Ｓ
.org 0x0000D0D6 :: .byte 20 ; Ｔ
.org 0x0000D206 :: .byte 20 ; Ｕ
.org 0x0000D336 :: .byte 19 ; Ｖ
.org 0x0000D466 :: .byte 22 ; Ｗ
.org 0x0000D596 :: .byte 19 ; Ｘ
.org 0x0000D6C6 :: .byte 20 ; Ｙ
.org 0x0000D7F6 :: .byte 21 ; Ｚ
.org 0x00003546 :: .byte 11 ; ［
.org 0x00003676 :: .byte 11 ; ］
.org 0x00001406 :: .byte 24 ; ＿
.org 0x00002116 :: .byte 24 ; ―
.org 0x0000D926 :: .byte 18 ; ａ
.org 0x0000DA56 :: .byte 17 ; ｂ
.org 0x0000DB86 :: .byte 16 ; ｃ
.org 0x0000DCB6 :: .byte 18 ; ｄ
.org 0x0000DDE6 :: .byte 17 ; ｅ
.org 0x0000DF16 :: .byte 17 ; ｆ
.org 0x0000E046 :: .byte 16 ; ｇ
.org 0x0000E176 :: .byte 17 ; ｈ
.org 0x0000E2A6 :: .byte  9 ; ｉ
.org 0x0000E3D6 :: .byte 13 ; ｊ
.org 0x0000E506 :: .byte 16 ; ｋ
.org 0x0000E636 :: .byte 10 ; ｌ
.org 0x0000E766 :: .byte 22 ; ｍ
.org 0x0000E896 :: .byte 17 ; ｎ
.org 0x0000E9C6 :: .byte 17 ; ｏ
.org 0x0000EAF6 :: .byte 16 ; ｐ
.org 0x0000EC26 :: .byte 16 ; ｑ
.org 0x0000ED56 :: .byte 15 ; ｒ
.org 0x0000EE86 :: .byte 15 ; ｓ
.org 0x0000EFB6 :: .byte 17 ; ｔ
.org 0x0000F0E6 :: .byte 18 ; ｕ
.org 0x0000F216 :: .byte 16 ; ｖ
.org 0x0000F346 :: .byte 18 ; ｗ
.org 0x0000F476 :: .byte 16 ; ｘ
.org 0x0000F5A6 :: .byte 16 ; ｙ
.org 0x0000F6D6 :: .byte 17 ; ｚ

.close
