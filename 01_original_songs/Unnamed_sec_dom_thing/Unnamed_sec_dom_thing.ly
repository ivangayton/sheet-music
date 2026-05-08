\version "2.18.2"
%\include "predefined-guitar-fretboards.ly"

\header {
  title = "As Yet Unnamed"
  subtitle = ""
  composer = "Ivan Buendía Gayton"
  tagline = \markup {
    \column {
      "Unnamed tune"
      "using secondary dominant progression"
      "Summerland, BC 2026"
    }
  }
}

\markup \vspace #1

versechords = \chordmode {
  \set chordChanges = ##t
  bes4. a4.:7 g4:m g1:m ees2. ees4:m ees1:m bes4. a:7 g4:m g1:m c4.:m f4.:7 bes4 bes1
}
  


 
changes = \chordmode {
    \versechords \break
    \versechords
  
}

<<
  \new ChordNames \chordmode {
    \changes
  }
  \new Voice = "chordchanges" \with {
    \consists "Pitch_squash_engraver"
  } \relative c'' {
    \improvisationOn
      \repeat unfold 32 {c4. c4. c4 r4 c c r}

 
    
  }
  \new Lyrics \lyricsto "chordchanges" {
    
  }
>>