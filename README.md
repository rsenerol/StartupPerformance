# StartupPerformance
Sample iOS project that writes a 10MB file to the disk when the initial view is loaded. 

This project includes the UI test `StartupPerformanceUITests.testStoragePerformance` that measures the disk usage during the period when the app launches and loads the initial view.

Screenshot taken from Xcode showing that ~12MB were written to disk during that period:

![](https://github.com/rsenerol/StartupPerformance/blob/rsenerol-patch-1/xcode-screenshot.png)
