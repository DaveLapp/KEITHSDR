//
//  SDR_CAT.cpp
//
//  Serial port control protocol useful for control head and panadapter information exchange.
//
//
#include "SDR_RA8875.h"
#include "RadioConfig.h"
#include "SDR_CAT.h"

#ifdef FT817_CAT

FT817 ft817;  // assign our class id


// set this to the hardware serial port you wish to use
void init_comms(void)
{
    //Serial1.begin(38400);
    ft817.begin(38400);
}

void print_CAT_status(void)
{
    Serial.println(ft817.getSMeter());
    Serial.println(ft817.getVFO());	  // get acxtual VF)
    Serial.println(ft817.getBandVFO(0)); // 0 is VFOA on FT817, 1 is VFOB
    Serial.println(ft817.getFreqMode()); // get frequency and mode
    Serial.println(ft817.getMode());	
}













#endif

