\header {
  title = "Tai Tam Blues"
  subtitle = ""
  composer = "Somebody must have written it"
  tagline = \markup {
    \column {
      "Transcribed for Homeschool Groove Concert Band,"
      "Summerland, BC, Canada 2025"
    }
  }
}

bass_intro = \relative c {
  \key bes \major
  \time 4/4 \numericTimeSignature
  r1 r2 r4 a 
  bes a g f | ees g bes e,8 f 
  r d4. ees4 e | f g aes a \break
}

bass_line = \relative c {
  bes d, ees e | f g aes a  
  bes d, ees e | f aes f e %\break
  ees g aes a | bes ees, des c
  bes d ees e | f aes g ges %\break
  f c f e | ees bes des c
  bes d ees e | f a, c b %\break
}

bass_again = \relative c{
  \once \override Score.BarNumber.break-visibility = #end-of-line-invisible
  bes, d ees e | f g aes a  
  bes d, ees e | f aes f e %\break
  ees g aes a | bes ees, des c
  bes d ees e | f aes g ges %\break
  f c f e | ees bes des c
  bes d ees e | f a, c b %\break
  }
  
introchords = \chordmode {
  bes1:7 bes:7 bes:7 bes:7 bes:7 bes:7
}
blues = \chordmode {
  \once \set chordChanges = ##f
  bes1:7 bes:7 bes:7 bes:7
  ees:7 ees:7 bes:7 bes:7
  f:7 ees:7 bes:7 bes:7
}

compchords = \new ChordNames {
  \set chordChanges = ##t % if no change, don't show
  { \introchords \blues \blues }
}

bassstaff = \new Staff \with {
      %instrumentName = "Bass" shortInstrumentName = "Bs"
    } <<
      \new Voice = "bass" { 
        \clef "bass_8"
        \autoBeamOn
        \bass_intro
        \bass_line
        \bass_again
      }
    >>

\score {
  <<
    \compchords
    \bassstaff
  >>
  \layout { 
    \context { \Staff \RemoveEmptyStaves }
    \override Score.TimeSignature.
    break-visibility = #all-invisible
  }
}