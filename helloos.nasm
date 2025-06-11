;helloos2
DB    0xeb, 0x4e, 0x90
DB    "HELLOIPL"         ; name of boot sector
DW    512                ; size of sector
DB    1                  ; size of clustor
DW    1                  ; start sector of FAT
DB    2                  ; number of FAT
DW    224                ; size of root directory
DW    2880               ; size of drive
DB    0xf0               ; media type
DW    9                  ; length of FAT area
DW    18                 ; number of sector per track (should be 18 sector
DW    2                  ; number of head(should be 2)
DD    0                  ; partion(should be 0 if not use partion)
DD    2880               ; size of dirve
DB    0,0,0x29           ; unknown
DD    0xffffffff         ; maybe serial number ofvolume
DB    "HELLO-OS   "      ; disk name(11byte)
DB    "FAT12   "         ; name of format(8byte)]

RESB  18

; main program
DB    0xb8, 0x00, 0x00, 0x8e, 0xd0, 0xbc, 0x00, 0x7c
DB    0x8e, 0xd8, 0x8e, 0xc0, 0xbe, 0x74, 0x7c, 0x8a
DB    0x04, 0x83, 0xc6, 0x01, 0x3c, 0x00, 0x74, 0x09
DB    0xb4, 0x0e, 0xbb, 0x0f, 0x00, 0xcd, 0x10, 0xeb
DB    0xee, 0xf4, 0xeb, 0xfd

; message
DB   0x0a, 0x0a
DB   "hello, world"
DB   0x0a
DB   0

RESB 0x1fe-($-$$)

DB   0x55, 0xaa

; boot sectpr
DB   0xf0, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00
RESB 4600
DB   0xf0, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00
RESB 1469432