@echo off
chcp 65001 >nul
title System Information Reporter
color 07
cls

:: Define a line separator
set "line=------------------------------------------------------------"

echo %line%
echo                  SYSTEM INFORMATION REPORT
echo                       %DATE% %TIME%
echo %line%
echo.

:: OS Information
echo [ Operating System ]
echo %line%
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type"
echo.

:: CPU Information
echo [ Processor ]
echo %line%
for /f "skip=1 tokens=*" %%p in ('wmic cpu get Name') do (
    if not "%%p"=="" echo Name: %%p
    goto :nextCPU
)
:nextCPU
wmic cpu get NumberOfCores,NumberOfLogicalProcessors,MaxClockSpeed /format:table
echo.

:: Memory Information
echo [ Memory ]
echo %line%
systeminfo | findstr /C:"Total Physical Memory" /C:"Available Physical Memory"
echo.
wmic MEMORYCHIP get Manufacturer,Capacity,Speed,PartNumber /format:table
echo.

:: Disk Information
echo [ Drives ]
echo %line%
wmic logicaldisk where "DriveType=3" get DeviceID,VolumeName,FileSystem,FreeSpace,Size /format:table
echo.

:: Network Information
echo [ Network Adapters ]
echo %line%
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /C:"IPv4 Address"') do (
    echo IPv4 Address:%%a
)
echo.

:: Temperature Placeholder (requires external tool)
echo [ Temperature ]
echo %line%
echo Temperature monitoring not available natively.
echo To enable, use OpenHardwareMonitor or HWiNFO with CLI logging.
echo.

echo %line%
echo              End of System Report
echo %line%
echo.
pause
