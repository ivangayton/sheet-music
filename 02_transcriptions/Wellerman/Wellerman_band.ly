\version "2.18.2"
#(set-global-staff-size 22)

\header {
  title = "The Wellerman"
  subtitle = "A Sea Shanty!"
  composer = "Traditional"
  tagline = \markup {
    \column {
      "The Wellerman"
      "For Band"
      "Summerland, BC 2026"
    }
  }
}

trumpetverse = \relative c' {

  c4 c8 ees g4 g | aes8 f f c' c g g r | 
  c,4 c8 ees g4 g | g8 f ees d c4 r \break  
}

trumpetchorus = \relative c' {
  c'4 c8 g bes g g r | aes8 f f c' c g g r |
  c4 c8 g bes g g r | g8 f ees d c4 r  \break
}

bass_verse = \relative c {
  bes4. f8 bes4. bes8 | ges4. ges8 bes4. r8 |
  bes4. f8 bes4. bes8 | f4 f bes4 r \break
}

bass_chorus = \relative c' {
  ges4. ges8 des4. des8 | ees4. ees8 bes4. r8 |
  ges'4. ges8 des4. des8 | f,4 f bes4 r \break
}

bassstaff = \new Staff \with {
      instrumentName = "Bass" shortInstrumentName = "Bs"
    } <<
      \new Voice = "Bass" { 
        \clef "bass"
        \autoBeamOn 
        \key bes \minor
        \numericTimeSignature
        \time 4/4
        \bass_verse \bass_chorus
      }
    >>
    
trumpetstaff = \new Staff \with {
      instrumentName = "Trumpet" shortInstrumentName = "Tr"
    } <<
      \new Voice = "Trumpet" { 
        \clef "treble"
        \autoBeamOn 
        \key c \minor
        \numericTimeSignature
        \time 4/4
        \trumpetverse \trumpetchorus  
      }
    >>

\score {
  <<
    \trumpetstaff
    \bassstaff
  >>
  \layout { 
    \context { \Staff \RemoveEmptyStaves }
    %\override Score.TimeSignature.
    break-visibility = #all-invisible
  }
}