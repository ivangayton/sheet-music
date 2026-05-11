\version "2.24.3"

\header {
  title = "Ice Capp from Timmy's"
  subtitle = "You know you want it!"
  composer = "Ivan Buendía Gayton"
  tagline = \markup {
    \column {
      "Ice Capp from Timmy's"
      "For Saku and Kaede"
      "Summerland, BC 2026"
    }
  }
}

\markup \vspace #1 % Vertical space after title and composer

versechords = \chordmode {
  \key bes \major
  \repeat unfold 2 {
    bes4. a4.:7 a4:7 | g1:m | ees1 | ees1:m | 
    bes4. a4.:7 a4:7 | g1:m | c4.:m f4.:7 f4:7 | bes1 \break
  }
  
}

strum = {
  \repeat unfold 4 {
    bes4 r8 a8 r4 a4 | g4. g4 g8 r4 | g4. g4 g8 r4 | g4. g4 g8 r4 |
  } 
}

bass_line = \relative c {
  \key bes \major
  \numericTimeSignature
  \time 4/4
  \repeat unfold 2 {
    bes4. a'4. r4 | g2. r4 | ees2. bes4 | ees2. r4 | 
    bes4. a'4. r4 | g1 |ees2 f2 | bes1
  }
}  

chordnames = \new ChordNames {
    \set chordChanges = ##t % if no change, don't show
    \numericTimeSignature
    \time 4/4
    \versechords
}

guitstaff = \new Staff \with {
      instrumentName = "Guit" shortInstrumentName = "Gt"
    }
    <<
  \new Voice = "chordchanges" \with {
    \consists "Pitch_squash_engraver"
  } \relative c'' {
    \improvisationOn
      \strum 
  }
>>

bassstaff = \new Staff \with {
      instrumentName = "Bass" shortInstrumentName = "Bs"
    } <<
      \new Voice = "Bass" { 
        \clef "bass"
        \autoBeamOn 
        \bass_line 
      }
    >>

\score {
  <<
    \chordnames
    \guitstaff
    \bassstaff
  >>
  \layout { 
    \context { \Staff \RemoveEmptyStaves }
    \override Score.TimeSignature.
    break-visibility = #all-invisible
  }
}