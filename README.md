# Instruments

</br>

![Compiler](https://github.com/user-attachments/assets/a916143d-3f1b-4e1f-b1e0-1067ef9e0401) ![Delphi Multi](https://github.com/user-attachments/assets/b9990ed3-932f-4558-b049-d7fdf6e8d43c)  
![Components](https://github.com/user-attachments/assets/d6a7a7a4-f10e-4df1-9c4f-b4a1a8db7f0e) ![None](https://github.com/user-attachments/assets/30ebe930-c928-4aaf-a8e1-5f68ec1ff349)  
![Description](https://github.com/user-attachments/assets/dbf330e0-633c-4b31-a0ef-b1edb9ed5aa7) ![Instruments](https://github.com/user-attachments/assets/49ed7c4c-3e32-43f1-bd48-5308a27cdcbd)  
![Last Update](https://github.com/user-attachments/assets/e1d05f21-2a01-4ecf-94f3-b7bdff4d44dd) ![022026](https://github.com/user-attachments/assets/90c88085-69f5-4332-b090-2de107ca7f86)  
![License](https://github.com/user-attachments/assets/ff71a38b-8813-4a79-8774-09a2f3893b48) ![Freeware](https://github.com/user-attachments/assets/1fea2bbf-b296-4152-badd-e1cdae115c43)  

</br>

An electronic musical instrument or electrophone is a musical instrument that produces sound using [electronic circuitry](https://en.wikipedia.org/wiki/Electronics). Such an instrument sounds by outputting an electrical, electronic or digital [audio signal](https://en.wikipedia.org/wiki/Audio_signal) that ultimately is plugged into a power amplifier which drives a loudspeaker, creating the sound heard by the performer and listener.

</br>

![Instruments](https://github.com/user-attachments/assets/4779efee-8ebc-4fd5-a342-4ac96b970a9d)

</br>

An electronic instrument might include a user interface for controlling its sound, often by adjusting the [pitch](https://en.wikipedia.org/wiki/Pitch_(music)), frequency, or duration of each note. A common user interface is the [musical keyboard](https://en.wikipedia.org/wiki/Musical_keyboard), which functions similarly to the keyboard on an acoustic [piano](https://en.wikipedia.org/wiki/Piano) where the keys are each linked mechanically to swinging string hammers - whereas with an electronic keyboard, the keyboard interface is linked to a synth module, computer or other electronic or digital sound generator, which then creates a sound. However, it is increasingly common to separate user interface and sound-generating functions into a music controller ([input device](https://en.wikipedia.org/wiki/Input_device)) and a [music synthesizer](https://en.wikipedia.org/wiki/Music_synthesizer), respectively, with the two devices communicating through a musical performance description language such as MIDI or Open Sound Control. The solid state nature of electronic keyboards also offers differing feel and response, offering a novel experience in playing relative to operating a mechanically linked piano keyboard.

# Construction:

### Create the piano keys.

```pascal
procedure TForm1.FormCreate(Sender: TObject);
begin
   GetMidiOutDevices2;
   InitMIDI;

   melodieliste:=tstringlist.create;
   abbruch:=true;
   voll:=640;

   radiogroup1.itemindex:=0;
   lb3.itemindex:=2;

    shapes[36]:=do1;
    shapes[37]:=do1d;
    shapes[38]:=re1;
    shapes[39]:=re1d;
    shapes[40]:=mi1;
    shapes[41]:=fa1;
    shapes[42]:=fa1d;
    shapes[43]:=sol1;
    shapes[44]:=sol1d;
    shapes[45]:=la1;
    shapes[46]:=la1d;
    shapes[47]:=si1;
    shapes[48]:=do2;
    shapes[49]:=do2d;
    shapes[50]:=re2;
    shapes[51]:=re2d;
    shapes[52]:=mi2;
    shapes[53]:=fa2;
    shapes[54]:=fa2d;
    shapes[55]:=sol2;
    shapes[56]:=sol2d;
    shapes[57]:=la2;
    shapes[58]:=la2d;
    shapes[59]:=si2;
    shapes[60]:=do3;
    shapes[61]:=do3d;
    shapes[62]:=re3;
    shapes[63]:=re3d;
    shapes[64]:=mi3;
    shapes[65]:=fa3;
    shapes[66]:=fa3d;
    shapes[67]:=sol3;
    shapes[68]:=sol3d;
    shapes[69]:=la3;
    shapes[70]:=la3d;
    shapes[71]:=si3;
    shapes[72]:=do4;
    shapes[73]:=do4d;
    shapes[74]:=re4;
    shapes[75]:=re4d;
    shapes[76]:=mi4;
    shapes[77]:=fa4;
    shapes[78]:=fa4d;
    shapes[79]:=sol4;
    shapes[80]:=sol4d;
    shapes[81]:=la4;
    shapes[82]:=la4d;
    shapes[83]:=si4;
    shapes[84]:=do5;
    shapes[85]:=do5d;
    shapes[86]:=re5;
    shapes[87]:=re5d;
    shapes[88]:=mi5;
    shapes[89]:=fa5;
    shapes[90]:=fa5d;
    shapes[91]:=sol5;
    shapes[92]:=sol5d;
    shapes[93]:=la5;
    shapes[94]:=la5d;
    shapes[95]:=si5;
    shapes[96]:=do6;
end;
```

</br>

### Tracking the piano keys with the mouse.

</ber>

```pascal
procedure TForm1.La1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var m,i:integer;
    gefunden:boolean;
begin
    soundinit;
    gefunden:=false;
    i:=36;
    repeat
      if (sender as tshape)=shapes[i] then gefunden:=true;
      inc(i);
    until gefunden or (i>96);
    m:=i-1;
    NoteOn(m, 127);
    sleep(800);
    NoteOff(m, 127);
end;
```

### Init Instruments..

```pascal
procedure tForm1.soundinit;
begin
  case radiogroup1.itemindex of
    0 : SetCurrentInstrument(midiAcousticGrandPiano);
    1 : SetCurrentInstrument(midiStringEnsemble1);
    2 : SetCurrentInstrument(midiGlockenspiel);
    3 : SetCurrentInstrument(midiviola);
    4 : SetCurrentInstrument(midiClarinet);
    5 : SetCurrentInstrument(midiSynthStrings1);
    6 : SetCurrentInstrument(midiTrombone);
    7 : SetCurrentInstrument(midiPanFlute);
    8 : SetCurrentInstrument(midiPercussiveOrgan);
    9 : SetCurrentInstrument(midiAcousticGuitarNylon);
   10 : SetCurrentInstrument(midiTangoAccordion);
   11 : SetCurrentInstrument(midiTubularBells);
   12 : SetCurrentInstrument(midiTenorSax);
   13 : SetCurrentInstrument(midiPiccolo);
    else
        SetCurrentInstrument(midiClavinet);
  end;
  SetPlaybackVolume(65535);
  Form1.TrackBar2Change(nil);
end;
```

### Playing a melody from a file...

```pascal
function laengentest(c:char):integer;
begin
    case c of
      'V' : laengentest:=voll;
      'D' : laengentest:=2*voll;
      '3' : laengentest:=3*(voll div 2);
      'H' : laengentest:=voll div 2;
      '4' : laengentest:=voll div 4;
      '8' : laengentest:=voll div 8;
      else laengentest:=voll;
    end;
end;
begin
    if not abbruch then begin
      abbruch:=true;
      exit;
    end;
  sel:=lb3.itemindex;
  if sel>=0 then begin
    voll:=updown2.position;
    abbruch:=false;
    d1.caption:='Stop';
    d9.enabled:=false;
    application.processmessages;

    case sel of
     0..4 : wtextdll('melo'+inttostr(sel+1));
     else
     begin
       soundpi;
       abbruch:=true;
       d1.caption:='Play melody';
       d9.enabled:=true;
       exit
     end;
    end;
    soundinit;
    tonan:=false;
    i:=0;
    repeat
      s:=melodieliste[i];
      case s[1] of
        'N' : begin
                tonan:=not tonan;
                n:=strtoint(copy(s,3,20));
                if s[2]='1' then NoteOn(n, 127)
                            else NoteOff(n, 127)
              end;
        'P' : begin
                laenge:=laengentest(s[2]);
                sleep(laenge);
              end;
        'T' : begin
                if s[2]='-' then voll:=voll-80
                            else voll:=voll+80;
              end;
        '1' : begin
                laenge:=laengentest(s[2]);
                delete(s,1,2);
                n1:=strtoint(s);
                note(n1,laenge);
              end;
        '2' : begin
                laenge:=laengentest(s[2]);
                delete(s,1,2);
                n1:=strtoint(copy(s,1,pos(',',s)-1));
                delete(s,1,pos(',',s));
                n2:=strtoint(s);
                note(n1,n2,laenge);
              end;
        '3' : begin
                laenge:=laengentest(s[2]);
                delete(s,1,2);
                n1:=strtoint(copy(s,1,pos(',',s)-1));
                delete(s,1,pos(',',s));
                n2:=strtoint(copy(s,1,pos(',',s)-1));
                delete(s,1,pos(',',s));
                n3:=strtoint(s);
                note(n1,n2,n3,laenge);
              end;
        '4' : begin
                laenge:=laengentest(s[2]);
                delete(s,1,2);
                n1:=strtoint(copy(s,1,pos(',',s)-1));
                delete(s,1,pos(',',s));
                n2:=strtoint(copy(s,1,pos(',',s)-1));
                delete(s,1,pos(',',s));
                n3:=strtoint(copy(s,1,pos(',',s)-1));
                delete(s,1,pos(',',s));
                n4:=strtoint(s);
                note(n1,n2,n3,n4,laenge);
              end;
        '5' : begin
                laenge:=laengentest(s[2]);
                delete(s,1,2);
                n1:=strtoint(copy(s,1,pos(',',s)-1));
                delete(s,1,pos(',',s));
                n2:=strtoint(copy(s,1,pos(',',s)-1));
                delete(s,1,pos(',',s));
                n3:=strtoint(copy(s,1,pos(',',s)-1));
                delete(s,1,pos(',',s));
                n4:=strtoint(copy(s,1,pos(',',s)-1));
                delete(s,1,pos(',',s));
                n5:=strtoint(s);
                note(n1,n2,n3,n4,n5,laenge);
              end;
        '6' : begin
                laenge:=laengentest(s[2]);
                delete(s,1,2);
                n1:=strtoint(copy(s,1,pos(',',s)-1));
                delete(s,1,pos(',',s));
                n2:=strtoint(copy(s,1,pos(',',s)-1));
                delete(s,1,pos(',',s));
                n3:=strtoint(copy(s,1,pos(',',s)-1));
                delete(s,1,pos(',',s));
                n4:=strtoint(copy(s,1,pos(',',s)-1));
                delete(s,1,pos(',',s));
                n5:=strtoint(copy(s,1,pos(',',s)-1));
                delete(s,1,pos(',',s));
                n6:=strtoint(s);
                note(n1,n2,n3,n4,n5,n6,laenge);
              end;
      end;
      inc(i);
    until (i>melodieliste.count-1) or abbruch;
    if abbruch then
      for i:=36 to 96 do NoteOff(i,127);
    abbruch:=true;
    d1.caption:='Play melody';
    d9.enabled:=true;
  end;
end;
```


