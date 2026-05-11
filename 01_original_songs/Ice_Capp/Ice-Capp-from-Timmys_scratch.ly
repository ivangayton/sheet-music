\version "2.18.2"
#(set-global-staff-size 22)

\header {
  title = "Ice Capp from Timmy's"
  subtitle = "You know you want it!"
  composer = "Ivan Buendía Gayton"
  tagline = \markup {
    \column {
      "Ice Capp from Timmy's"
      "For Saku on the Bass"
      "Summerland, BC 2026"
    }
  }
}

tuba_line = \relative c {
  \key bes \major
  \numericTimeSignature
  \time 4/4
  bes,4. a'4. r4 | g2. r4 | ees2. bes4 | ees2. r4 | 
  bes4. a'4. r4 | g1 |ees2 f2 | bes1
}

bass_line = \relative c {
  \key bes \major
  \numericTimeSignature
  \time 4/4
  bes4. a'4. r4 | g2. r4 | ees2. bes4 | ees2. r4 | 
  bes4. a'4. r4 | g1 |ees2 f2 | bes1
}

bassstaff = \new Staff \with {
      instrumentName = "Bass" shortInstrumentName = "Bs"
    } <<
      \new Voice = "Bass" { 
        \clef "bass"
        \autoBeamOn 
        \bass_line }
    >>
    
tubastaff = \new Staff \with {
      instrumentName = "Tuba" shortInstrumentName = "Tb"
    } <<
      \new Voice = "Tuba" { 
        \clef "bass"
        \autoBeamOn 
        \tuba_line }
    >>

\score {
  <<
    \tubastaff
    \bassstaff
  >>
  \layout { 
    \context { \Staff \RemoveEmptyStaves }
    %\override Score.TimeSignature.
    break-visibility = #all-invisible
  }
}