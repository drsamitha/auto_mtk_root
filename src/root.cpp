/*
* root shell automate program for mediatek android
* device should be with unlocked bootloder 
* or try some vuln ;)
*
*
*/
#include <iostream>
#include "ADB.h"

using namespace std;



int main()

{
	 
	adb("devices"); 	//give android device list + status
				//std::string class c_str() method - convert string
	adb("shell getprop ro.secure");

	

	return 0;
}


