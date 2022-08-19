
.386
.model flat, stdcall
option casemap :none

include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

.data
 message db "W3lc0m3 t0 th3 3r4 0f th3 m4ch1n35 !", 0

.code 
main:
 invoke StdOut, addr message
 invoke ExitProcess, 0
end main




; compiling CMDs:
; set projectName=<name>
; \masm32\bin\ml /c /Zd /coff %projectName%.asm
; \masm32\bin\Link /SUBSYSTEM:CONSOLE %projectName%.obj
;
; runing:
; %projectName%.exe
; 
; OR
; 
; a 2-liner
; set projectName=<name>
; \masm32\bin\ml /c /Zd /coff %projectName%.asm && \masm32\bin\Link /SUBSYSTEM:CONSOLE %projectName%.obj && %projectName%.exe

;https://www.tutorialspoint.com/assembly_programming/assembly_basic_syntax.htm
