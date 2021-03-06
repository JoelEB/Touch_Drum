//This file contains the various Scales used by the digital handpan. 
//Each number corresponds to a position in the note_frequency.h table
//Many of these scales were imported using this site as a reference:
//https://hapidrum.co/hapi-drum-scale.aspx

///CHANGE WHEN ADDING NEW SCALES
int numOfScales = 40 ;//indexed at zero (subtract 1) 

int scale[][9] = 
{
    //A Major 3          2,2,3,2,3,2,2
     {
      57,//A3
      59,
      61,
      64,
      66,
      69,
      71,
      74,
      45
     },
///////////////////////////////////////////////////// 
    //A Major 4          2,2,3,2,3,2,2
     {
      69,//A4 440HZ
      71,
      73,
      76,
      78,
      81,
      83,
      86,
      57
     },
///////////////////////////////////////////////////// 
  //A Minor 3 (A3, C4, D4, E4, G4, A4, C5, D5)          3,2,2,3,2,3,2
     {
      57,//A3
      60,//C4
      62,//(146.83);//D4
      64,//(164.81);//E4
      67,//392,//G4
      69,//220,//A4
      72,//C5
      74,//293.66,//D5
      45
     },
///////////////////////////////////////////////////// 
//A Minor 4          3,2,2,3,2,3,2
     {
      69,//A4
      72,
      74,
      76,
      79,
      81,
      84,
      86,
      57
     },
/////////////////////////////////////////////////////
//A Akebono 3 (A3, B3, C4, E4, F4, A4, B4, C5)         2,1,4,1,4,2,1
     {
      57,//A3
      59,//246.94,//B3
      60,//C4
      64,//(164.81);//E4
      65,//(174.61);//F4
      69,//A4
      71,//B4
      72,//C5
      45
     },
/////////////////////////////////////////////////////
//A Akebono 4         2,1,4,1,4,2,1
     {
      69,//A4
      71,//B4
      72,//C5
      76,//E5
      77,//F5
      81,//A5
      83,//B5
      84,//C6
      57
     },



     
/////////////////////////////////////////////////////
//C Major 4 (C4, D4, E4, G4, A4, C5, D5, E5)            2,2,3,2,3,2,2
     {
      60,//(261.63);//C4 (Middle C)
      62,//293.66,//D4
      64,//329.63,//E4
      67,//392,//G4
      69,//440,//A4
      72,//(523.25);//C5
      74,//(587.32);//D5
      76//(659.26);//E5
     },
/////////////////////////////////////////////////////
//C Major 5 (C4, D4, E4, G4, A4, C5, D5, E5)            2,2,3,2,3,2,2
     {
      72,//C5
      74,
      76,
      79,
      81,
      84,
      86,
      88
     },
/////////////////////////////////////////////////////
//C Minor 4 (C4, D4, E4, G4, A4, C5, D5, E5)        3,2,2,3,2,3,2   
     {
      60,//(261.63);//C4 (Middle C)
      63,
      65,
      67,
      70,
      72,
      75,
      77
     },
/////////////////////////////////////////////////////
//C Minor 5 (C4, D4, E4, G4, A4, C5, D5, E5)        3,2,2,3,2,3,2  
     {
      72,
      75,
      77,
      79,
      82,
      84,
      87,
      89
     },


     
/////////////////////////////////////////////////////
//G Major 3 (G3, A3, B3, D4, E4, G4, A4, B4) 
     {
       55,//196.00,//G3
       57,//220,//A3
       59,//246.94,//B3
       62,//293.66,//D4
       64,//329.63,//E4
       67,//392,//G4
       69,//440,//A4
       71//493.88,//B4
      },    
/////////////////////////////////////////////////////
//G Major 4 (G3, Bb3, C4, D4, F4, G4, Bb4, C5)
     {
       67,//G4
       69,//A4
       71,//B4
       74,//D5
       76,//E5
       79,//G5
       81,//A5
       83//B5
     },  
/////////////////////////////////////////////////////
//G Minor 3(G3, Bb3, C4, D4, F4, G4, Bb4, C5)        3,2,2,3,2,3,2
     {
      55,//196.00,//G3
      58,//(233.88);//Bb3
      60,//(261.63);//C4 (Middle C)
      62,//293.66,//D4
      65,//(174.61);//F4
      67,//392,//G4
      70,//(233.88);//Bb4
      72//(523.25);//C5
     },    
/////////////////////////////////////////////////////
//G Minor 4 (G3, Bb3, C4, D4, F4, G4, Bb4, C5)
     {
      67,//196.00,//G3
      70,//(233.88);//Bb3
      72,//(261.63);//C4 (Middle C)
      74,//293.66,//D4
      77,//(174.61);//F4
      79,//392,//G4
      82,//(233.88);//Bb4
      84//(523.25);//C5
     },   



            
/////////////////////////////////////////////////////
//D Major 4 (D4, E4, F#4, A4, B4, D5, E5, F#5)        2,2,3,2,3,2,2   (D3, E3, F#3, A3, B3, D4, E4, F#4)
     {
      62,//(146.83);//D4
      64,//(164.81);//E4
      66,//F#4
      69,//220,//A4
      71,//B4
      74,//293.66,//D5
      76,//329.63,//E5
      78//F#5
     },
/////////////////////////////////////////////////////
//D Major 5        2,2,3,2,3,2,2
     {
      74,//D5
      76,//E5
      78,//F#5
      81,//A5
      83,//B5
      86,//D6
      88,//E6
      90//F#6
     },
/////////////////////////////////////////////////////
//D Minor 4      3,2,2,3,2,3,2              (D3, F3, G3, A3, C4, D4, F4, A4)
     {
      62,//D4
      65,
      67,
      69,
      72,
      74,
      77,
      79
     },
/////////////////////////////////////////////////////
//D Minor 5      3,2,2,3,2,3,2
     {
      74,
      77,
      79,
      81,
      84,
      86,
      89,
      91
     },
/////////////////////////////////////////////////////
//D Akebono 3 (D3, E3, F3, A3, Bb3, D4, E4, F4)
    {
      50,//(146.83);//D3
      52,//(164.81);//E3
      53,//(174.61);//F3
      57,//220,//A3
      58,//(233.88);//Bb3
      62,//293.66,//D4
      64,//329.63,//E4
      65//(349.23);//F4
    },
/////////////////////////////////////////////////////
//D Akebono 4 (D4, E4, F4, A4, Bb4, D5, E5, F5) 
    {
      62,//(146.83);//D4
      64,//(164.81);//E4
      65,//(174.61);//F4
      69,//220,//A4
      70,//(233.88);//Bb4
      74,//293.66,//D5
      76,//329.63,//E5
      77//(349.23);//F5
    },
/////////////////////////////////////////////////////
//D Akebono 5 (D4, E4, F4, A4, Bb4, D5, E5, F5)       2,1,4,1,4,2,1
    {
      74,//D5
      76,//E5
      77,//F5
      81,//A5
      82,//Bb5
      86,//D6
      88,//E6
      89///F6
    },


    
/////////////////////////////////////////////////////
//E Major 3  (E3, F#3, G#3, B3, C#4, E4, F#4, G#4)   2,2,3,2,3,2,2
     {
      52,//E3
      54,//F#3
      56,//G#3
      59,//B3
      61,//C#4
      64,//E4
      66,//F#4
      68//G#4
     },
/////////////////////////////////////////////////////
//E Major 4   2,2,3,2,3,2,2
     {
      64,
      66,
      68,
      71,
      73,
      76,
      78,
      80
     },
/////////////////////////////////////////////////////
//E Major 5   2,2,3,2,3,2,2
     {
      76,
      78,
      80,
      83,
      85,
      88,
      90,
      92
     },
/////////////////////////////////////////////////////
//E Minor 3 (E3, G3, A3, B3, D4, E4, G4, A4)     3,2,2,3,2,3,2  
     {
      52,
      55,
      57,
      59,
      62,
      64,
      67,
      69
     },
/////////////////////////////////////////////////////
//E Minor 4 (E3, G3, A3, B3, D4, E4, G4, A4)     3,2,2,3,2,3,2  
     {
      64,
      67,
      69,
      71,
      74,
      76,
      79,
      81
     },
/////////////////////////////////////////////////////
//E Minor 5 (E3, G3, A3, B3, D4, E4, G4, A4)     3,2,2,3,2,3,2  
     {
      76,
      79,
      81,
      83,
      86,
      88,
      91,
      93
     },
/////////////////////////////////////////////////////
//E Akebono 3 (E3, F#3, G3, B3, C4, E4, F#4, G4)    2,1,4,1,4,2,1  
     {
      52,
      54,
      55,
      59,
      60,
      64,
      66,
      67
     },
/////////////////////////////////////////////////////
//E Akebono 4      
     {
      64,
      66,
      67,
      71,
      72,
      76,
      78,
      79
     },
/////////////////////////////////////////////////////
//E Akebono 5      
     {
      76,
      78,
      79,
      83,
      84,
      88,
      90,
      91
     },
/////////////////////////////////////////////////////
// A3 Equinox       A C# D E F# G# A C#     4,1,2,2,2,1,4
     {
      57,//A3
      61,
      62,
      64,
      66,
      68,
      69,
      73
     },
/////////////////////////////////////////////////////
// C4 Equinox       4,1,2,2,2,1,4
     {
      60,
      64,
      65,
      67,
      69,
      71,
      72,
      76
     },
/////////////////////////////////////////////////////
// D4 Equinox           4,1,2,2,2,1,4
     {
      62,
      66,
      67,
      69,
      71,
      73,
      74,
      78
     },
/////////////////////////////////////////////////////
// E4 Equinox           4,1,2,2,2,1,4
     {
      64,
      68,
      69,
      71,
      73,
      75,
      76,
      80
     },
/////////////////////////////////////////////////////
// F4 Equinox           4,1,2,2,2,1,4
     {
      65,
      69,
      70,
      72,
      74,
      76,
      77,
      81
     },
/////////////////////////////////////////////////////
// G4 Equinox           4,1,2,2,2,1,4
     {
      67,
      71,
      72,
      74,
      76,
      78,
      79,
      83
     },
/////////////////////////////////////////////////////
// C4 Pygmy           2,1,4,3,2,2,1
     {
      60,
      62,
      63,
      67,
      70,
      72,
      74,
      75   
     },
/////////////////////////////////////////////////////
// D4 Pygmy D3 E3 F3 A3 C4 D4 E4 F4           2,1,4,3,2,2,1
     {
      62,
      64,
      65,
      69,
      72,
      74,
      76,
      77      
     },
/////////////////////////////////////////////////////
// E4 Pygmy E3    F#3    G3    B3    D4    E4    F#4    G4         2,1,4,3,2,2,1
     {
      64,
      66,
      67,
      71,
      74,
      76,
      78,
      79  
     },
/////////////////////////////////////////////////////
// B3 Schumann   B A D# G# C D# F# B 
     {
      59,
      69,
      75,
      80,
      84,
      87,
      90,
      95  
     },
/////////////////////////////////////////////////////
// Divine Order   F#, A, B, D#, E, F#, A, B
     {
      66,
      69,
      71,
      75,
      76,
      78,
      81,
      83  
     }
/////////////////////////////////////////////////////
};









////////EXTRA SCALES///////////////////

//G Major 2 (G3, A3, B3, D4, E4, G4, A4, B4) scale [0][x]  x=0-7
  /*   {
       43, //97.9988,
       45,//220,//A3
       47,//246.94,//B3
       50,//293.66,//D4
       52,//329.63,//E4
       55,//392,//G4
       57,//440,//A4
       59//493.88,//B4
      },    */


      //G Major 5 (G3, Bb3, C4, D4, F4, G4, Bb4, C5)       2,2,3,2,3,2,2
    /* {
       79,//196.00,//G3
       81,//220,//A3
       83,//246.94,//B3
       86,//293.66,//D4
       88,//329.63,//E4
       91,//392,//G4
       93,//440,//A4
       95//493.88,//B4
     },  */
