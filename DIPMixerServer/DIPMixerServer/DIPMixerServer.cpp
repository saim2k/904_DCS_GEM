// DIPMixerServer.cpp : Defines the entry point for the console application.
//

#include "StdAfx.h"
#ifdef WIN32
#include <windows.h>
#else
#include <stdlib.h>
#include <unistd.h>
#endif
#include "C:/DIPServer/dip-5.6.0/include/Dip.h"
#include "C:/DIPServer/dip-5.6.0/include/DIPVersion.h"
#include <string>
#include <iostream>
#include <sstream>
#include <fstream>
#include <vector>
#include <algorithm>

using namespace std;

/*
*  DIP server that publishes data from the CMSGASTIF FlowPlot values.
*/

class ErrHandler :public DipPublicationErrorHandler {
	void handleException(DipPublication* publication, DipException& ex) {
		printf("Error because %s", ex.what());
	}
};

int main(const int argc, const char** argv) {

	if (argc < 1) {
		cerr << "There must be at source path argument" << endl;
		cerr << "Usage: <source path>" << endl;
		return 1;
	}

	// Publication path and name
	string pubName;
	vector <string> pubNames;
	pubNames.push_back("dip/CMS/GASTIF/Mixer");

	// Publication parameters
	unsigned int noPubs = pubNames.size();
	unsigned int updateRate = 60000; //(ms) 60000ms = 1minute
	unsigned int lifeTime = 60000; //(ms) 60000ms = 1minute

	DipPublication **pub = new DipPublication*[noPubs]();
	DipData **pubData = new DipData*[noPubs];
	DipTimestamp aTimeStamp;

	// Creating the server.
	string serverName = "CMSGASTIF_Server";
	DipFactory *dip = Dip::create(serverName.c_str());
	dip->setDNSNode("dipnsgpn1,dipnsgpn2");

	// Publication names and initiating publications
	ErrHandler errorHandler;
	//int i;
	for (unsigned int i = 0;i<noPubs;i++) {
		ostringstream oss;
		oss << pubName << "_" << i;
		pub[i] = dip->createDipPublication(pubNames.at(i).c_str(), &errorHandler);
		pubData[i] = dip->createDipData();
		cout << serverName << " has just created a publication to: " << oss.str() << endl;
	}

	// Just a flag for traces.
	bool flip = true;

	// Data structures
	struct DT {
		double time1;
		double CO2;
		double time2;
		double Ar;
	} DT_data;


	// Initialize
	DT_data.time1 = 0;
	DT_data.CO2 = 0;
	DT_data.time2 = 0;
	DT_data.Ar = 0;
	
	// Fils to be read
	string path = argv[1];
	ifstream infile(path);

	// Variables
	string line;
	int j = 0;
	int publishNo = 0;

	while (true) {

		// Read data
		while (infile.good() && getline(infile, line)) {

			// The values in the .txt are separated with a semi-colon.
			// We change these to a space so, the input stream can read variable-by-variable
			replace(line.begin(), line.end(), ';', ' '), line.end();

			istringstream iss(line);

			// Push data in variables
			iss >> DT_data.time1 >> DT_data.CO2 >> DT_data.time2 >> DT_data.Ar;
		}

		unsigned int iterations = lifeTime / updateRate;

		// Push data variables into publication
		try {

			cout << "Publish " << publishNo << " : " << pubNames[j] << endl;
			// Print data to console for checking if required
			cout << DT_data.time1 << " | " << DT_data.CO2 << " | " << DT_data.time2 << " | " << DT_data.Ar << endl;

			pubData[j] = dip->createDipData();
			pubData[j]->insert(DT_data.time1, "Time 1");
			pubData[j]->insert(DT_data.CO2, "CO2 % FSR");
			pubData[j]->insert(DT_data.time2, "Time 2");
			pubData[j]->insert(DT_data.Ar, "Ar % FSR");

			publishNo++;
			DipTimestamp time;

			if (flip == true ? cout << "/" : cout << "\\") flip = !flip;
			cout << "Posting data to pub" << endl;
			cout << "Posting data to pub " << pub[j]->getTopicName() << endl;
			pub[j]->send(*pubData[j], time);

		}
		catch (DipException e) {
			printf("Failed to send data\n");
		}


#ifdef WIN32
		Sleep(updateRate);
#else
		sleep(updateRate / 1000);
#endif

		infile.clear();
		infile.seekg(0, ios::beg);
	}

	// Shutdown
	cout << "Server's lifetime has expired, leaving... " << endl;
	for (unsigned int i = 0; i < noPubs; i++) {
		cout << "Server is cleaning pending Publications." << endl;
		dip->destroyDipPublication(pub[i]);
	}

	delete[]pubData;
	cout << "Server's done." << endl;
	system("pause");
	return 0;
}