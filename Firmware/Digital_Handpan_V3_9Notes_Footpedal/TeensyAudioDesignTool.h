#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>

// GUItool: begin automatically generated code
AudioSynthWaveformDc     dc2;            //xy=775,603
AudioSynthWaveformSine   sine3;          //xy=775,647
AudioSynthWaveformDc     dc6;            //xy=774,961
AudioSynthWaveformSine   sine7;          //xy=774,1005
AudioSynthWaveformSine   sine2;          //xy=776,561
AudioSynthWaveformSine   sine6;          //xy=775,919
AudioSynthWaveformSine   sine1;          //xy=778,475
AudioSynthWaveformSine   sine4;          //xy=777,731
AudioSynthWaveformDc     dc1;            //xy=778,517
AudioSynthWaveformSine   sine5;          //xy=777,833
AudioSynthWaveformSine   sine8;          //xy=776,1089
AudioSynthWaveformDc     dc5;            //xy=777,875
AudioSynthWaveformDc     dc4;            //xy=778,775
AudioSynthWaveformDc     dc8;            //xy=777,1133
AudioSynthWaveformDc     dc3;            //xy=780,691
AudioSynthWaveformDc     dc7;            //xy=779,1049
AudioSynthWaveformSine   sine9;          //xy=778.75,1178.75
AudioSynthWaveformDc     dc9;            //xy=781.25,1220
AudioEffectMultiply      multiply3;      //xy=932,665
AudioEffectMultiply      multiply4;      //xy=932,751
AudioEffectMultiply      multiply7;      //xy=931,1023
AudioEffectMultiply      multiply8;      //xy=931,1109
AudioEffectMultiply      multiply2;      //xy=936,581
AudioEffectMultiply      multiply6;      //xy=935,939
AudioEffectMultiply      multiply1;      //xy=939,492
AudioEffectMultiply      multiply5;      //xy=938,850
AudioEffectMultiply      multiply9;      //xy=943.75,1192.5
AudioMixer4              mixer1;         //xy=1151,642
AudioMixer4              mixer2;         //xy=1150,1000
AudioMixer4              mixer3;         //xy=1165,1143.75
AudioMixer4              mixerMain;      //xy=1442,777.5
AudioOutputI2S           i2s1;           //xy=1609.4999389648438,899.2500305175781
AudioConnection          patchCord1(dc2, 0, multiply2, 1);
AudioConnection          patchCord2(sine3, 0, multiply3, 0);
AudioConnection          patchCord3(dc6, 0, multiply6, 1);
AudioConnection          patchCord4(sine7, 0, multiply7, 0);
AudioConnection          patchCord5(sine2, 0, multiply2, 0);
AudioConnection          patchCord6(sine6, 0, multiply6, 0);
AudioConnection          patchCord7(sine1, 0, multiply1, 0);
AudioConnection          patchCord8(sine4, 0, multiply4, 0);
AudioConnection          patchCord9(dc1, 0, multiply1, 1);
AudioConnection          patchCord10(sine5, 0, multiply5, 0);
AudioConnection          patchCord11(sine8, 0, multiply8, 0);
AudioConnection          patchCord12(dc5, 0, multiply5, 1);
AudioConnection          patchCord13(dc4, 0, multiply4, 1);
AudioConnection          patchCord14(dc8, 0, multiply8, 1);
AudioConnection          patchCord15(dc3, 0, multiply3, 1);
AudioConnection          patchCord16(dc7, 0, multiply7, 1);
AudioConnection          patchCord17(sine9, 0, multiply9, 0);
AudioConnection          patchCord18(dc9, 0, multiply9, 1);
AudioConnection          patchCord19(multiply3, 0, mixer1, 2);
AudioConnection          patchCord20(multiply4, 0, mixer1, 3);
AudioConnection          patchCord21(multiply7, 0, mixer2, 2);
AudioConnection          patchCord22(multiply8, 0, mixer2, 3);
AudioConnection          patchCord23(multiply2, 0, mixer1, 1);
AudioConnection          patchCord24(multiply6, 0, mixer2, 1);
AudioConnection          patchCord25(multiply1, 0, mixer1, 0);
AudioConnection          patchCord26(multiply5, 0, mixer2, 0);
AudioConnection          patchCord27(multiply9, 0, mixer3, 0);
AudioConnection          patchCord28(mixer1, 0, mixerMain, 0);
AudioConnection          patchCord29(mixer2, 0, mixerMain, 1);
AudioConnection          patchCord30(mixer3, 0, mixerMain, 2);
AudioConnection          patchCord31(mixerMain, 0, i2s1, 0);
AudioConnection          patchCord32(mixerMain, 0, i2s1, 1);
AudioControlSGTL5000     sgtl5000_1;     //xy=1114,806
// GUItool: end automatically generated code

