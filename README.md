# SysInfoReporter

A lightweight system information report script for Windows. This Batch script generates a comprehensive report of your system's specifications, including:

- Operating System (OS)
- Processor (CPU) Information
- Memory (RAM) Information
- Disk (Storage) Information
- Network Adapter (IP Address)
- (Optional) Temperature Monitoring (requires third-party tools)

This script is designed for professionals, system administrators, and anyone who needs a quick and clean summary of their system specs. It does not rely on any third-party software except for optional temperature monitoring, making it a portable and efficient tool.

## Features

- **Operating System Information**: Displays the OS name, version, and architecture.
- **CPU Details**: Shows the processor name, number of cores, logical processors, and clock speed.
- **Memory Information**: Lists RAM details including total capacity, available memory, and individual chip specs.
- **Disk Information**: Provides details about all your drives (size, free space, file system).
- **Network Details**: Shows the active IPv4 address of your system.
- **Temperature Monitoring (Optional)**: If you have OpenHardwareMonitor or HWiNFO installed, temperature readings can be displayed.

## Usage

1. **Download** or clone the repository.
2. Open the script file `SystemReport.bat` by double-clicking on it.
3. Wait a few seconds for the report to generate.
4. The output will be displayed in a clean, readable format.

> **Note:** The temperature monitoring section requires a third-party tool like **OpenHardwareMonitor** or **HWiNFO**. If you don’t have it installed, the script will notify you.


## Requirements

- **Windows 7 or later** (compatible with most versions of Windows).
- Optionally, **OpenHardwareMonitor** or **HWiNFO** for temperature monitoring.


## Installation

There’s nothing to install — simply download the `.bat` file and run it! 

To enable temperature monitoring, download and run [OpenHardwareMonitor](https://openhardwaremonitor.org/) and place the report generation file in the same folder as the batch script, or modify the script to point to the OpenHardwareMonitor executable.

## Screenshots

![ScreenCapture](https://github.com/user-attachments/assets/327fc628-2010-43ad-ba65-38a03619eb3b)




## License

This project is open-source and available under the MIT License. See the [LICENSE](LICENSE) file for more details.


## Contributing

If you have suggestions, improvements, or bug fixes, feel free to fork the repository and submit a pull request. Contributions are always welcome!

## Author

Created by — B0TxS

