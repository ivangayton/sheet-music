\header {
  title = "The Dirty Trumpet of Ellis Avenue"
  composer = "Ivan Gayton and Ellis Ave Crew"
}

leadIn = {
   bes'8 a
}
head = {
  bes4 f'8 bes, f'4 f,8 g ees2. c8 d 
  ees4 g,8 bes f'4 a,8 f bes2. bes'8 a
  bes4 f'8 bes, f'4 f,8 g ees2. c8 d 
  ees4 g,8 bes f'4 a,8 f bes2.
}

mainStave = {
  \key bes \major 
  r2. \leadIn
  \head \leadIn \head r4
  r1 r1 r1 r1 r1 r1 r1 r1 \break
  r1 r1 
  \key ees \major r1 r1 
  \key aes \major r1 r1 
  \key des \major r1 r1 \break
  r r r r 
  r r r r r r r r
  r r r r r r r r
  r \key bes \major r2. \leadIn \break
  \head r4

  \key b \major
  r1 r r r r r r r
  r r r r r r r r
  r r r r r r r r
  r r r r
}

PartA = \chordmode {
  bes1 aes ees bes
}

PartAUp = \chordmode {
  b1 a e b
}

Transition = \chordmode {
  bes1 g:m ees c:m 
  aes f:m des bes:m 
}

PartB = \chordmode {
  bes1:m bes1:m bes1:m bes1:m \break
  bes1:m bes1:m bes1:m bes1:m 
  bes1:m bes1:m bes1:m bes1:m \break
  bes1:m bes1:m bes1:m bes1:m 
  bes1:m bes1:m bes1:m bes1:m \break
  c:m f:7


}

comp = \new ChordNames \with {alignAboveContext = "main" }{
  r1 \PartA \PartA \break
  \PartA \PartA \break
  \PartA \PartA \break
  \Transition \break
  \PartB
  \PartA \PartA \break
  \PartAUp \PartAUp \break
  \PartAUp \PartAUp \break
  \PartAUp \PartAUp \break
  b1 b1 b1 b1

  
}

\score {
  \new Staff = main \relative {
  \tempo 4=115
  <<
    \comp
    \mainStave
  >>
  }

  \layout {
   
  }
  \midi {}
}