#include <iostream>
#include <string>

using namespace std;


#ifdef _WIN32 		//for windows
const string adb="adb.exe";
#else			//for linux
const string adb="adb";
#endif


int main()

{
	string cmd=adb+" devices";
	system(cmd.c_str()); 	//give android device list + status
				//std::string class c_str() method - convert string
	system(cmd.c_str("adb getprop ro.secure"))
	

	return 0;
}


