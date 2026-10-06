.ps2


.open "Chulip (USA)/MDL/SHOP03.PAK", 0x00

; Fixes the issue where the 3d model for "Prmnt. Free-Pass" does not appear on the Station Managers' shop screen.
.org 0x4350
	.byte 0x08

.close
