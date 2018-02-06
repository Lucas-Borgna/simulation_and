@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto a3482536293f4bc6a34e1396df7b6a58 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot AND_GATE_tb_behav xil_defaultlib.AND_GATE_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
