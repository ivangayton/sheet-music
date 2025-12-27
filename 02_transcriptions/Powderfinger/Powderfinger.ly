\version "2.18.2"

\header {
  title = "Powderfinger"
  subtitle = ""
  composer = "Neil Young"
  tagline = \markup {
    \column {
      "Powderfinger by Neil Young"
      "Engraved by Ivan Gayton"
      "Summerland, BC 2025"
    }
  }
}

melodyVerseI = \relative c' {
  b4' d d d |
  e4 e e b |
  c4 c r2 |
  r2 r4 c4 |
  c4 c c c |
  c4 c c c |
  c4 r r2 |
  r2 r4 c |
  c4 c c c |
  c4 c c c |
  c4 c c c |
  c4 c c c |
  c4 c c c |
  c4 c c c |
  c4 c c c |
  c4 c c c |
  c4 c c c |
  c4 c c c |
  c4 r4 r2 |
  r1 r r r r

}

verseI = \lyricmode {
  Look out, Mama, there's_a white boat coming_up the ri ver
  With_a big red beacon and_a flag and_a man_on the rail
  I_think_you better call John
  'Cause_it don't_look like_they're here to_de liver _ _ the mail _ _
  And_it's less than a mile_a way _ _
  I hope they_didn't come to stay _ _
  It's_got numbers on_the side and_a gun
  And_it's makin' big waves 
}

chorus = \lyricmode {
}

verseII = \lyricmode {
}

bridge = \lyricmode {  
}

melodyChorus = \relative c' {
}

versechords = \chordmode {
  g1 c g2. c4 g1
  c1 c1 g2. c4 g1
  c1 c e:m c
  g1 c g c
  g c d d
  g c g2. c4 g1
}

compchords = \chordmode {
  %\set chordChanges = ##t % if no change, don't show
  \versechords \break
  }

voxstaff = \new Staff \with {
  %instrumentName = "Vocal" shortInstrumentName = "Vx"
} <<
  \set Staff.explicitClefVisibility = #'#(#f #t #t)
  \new Voice = "vox" { \autoBeamOff 
                       \melodyVerseI 
  }
  \new Lyrics \lyricsto "vox" { 
    \verseI 
  }
>>

\score {
  <<
    %\new FretBoards { \compchords }
    \new ChordNames { \compchords }
    \voxstaff
  >>
}


