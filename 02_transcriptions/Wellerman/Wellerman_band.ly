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

% TRUMPET
trumpetpickup = \relative c' {
  r2 r4 r8 d8 
}
trumpetverse = \relative c' {
  d8 d16 d d8 f a8 a a8 a | bes8 g g d' d a a d, | 
  d8 d16 d d8 f a8 a a8 a | a8 g f e d4 r \break  
}
trumpetchorus = \relative c' {
  d'4 d8 r16 a c8 a a r16 a | bes8 g g d' d a a4 |
  d4 d8 r16 a c8 a a a | a8 g f e d4 r  \break
}
    
trumpetstaff = \new Staff \with {
      instrumentName = "Bb Trumpet" shortInstrumentName = "Tr"
    } <<
      \new Voice = "Trumpet" { 
        \clef "treble"
        \autoBeamOn 
        \key d \minor
        \numericTimeSignature
        \time 4/4
        \trumpetpickup \trumpetverse \trumpetchorus  
      }
    >>

% BASS
basspickup = \relative c {
  r1 
}
bassverse = \relative c {
  bes4. f8 bes4. bes8 | ges4. ges8 bes4. r8 |
  bes4. f8 bes4. bes8 | f4 f bes4 r \break
}
basschorus = \relative c' {
  ges4. ges8 des4. des8 | ees4. ees8 bes4. r8 |
  ges'4. ges8 des4. des8 | f,4 f bes4 r \break
}
bassstaff = \new Staff \with {
      instrumentName = "Bass" shortInstrumentName = "Bs"
    } <<
      \new Voice = "Bass" { 
        \clef "bass"
        \autoBeamOn 
        \key c \minor
        \numericTimeSignature
        \time 4/4
        \basspickup \bassverse \basschorus
      }
    >>
    
% DRUMS
drumpickup = \relative c {
   \drummode {
    {
      \repeat unfold 4 bd4
    } 
  }
}
drumverse = \relative c {
   \drummode {
    << {
      \repeat unfold 8 hh4
    } \\ {
      bd4 s sn s bd s sn s 
    } >>
  }
}
drumchorus = \relative c' {
}
drumstaff = \new DrumStaff \with {
      instrumentName = "Drum kit" shortInstrumentName = "Dr"
    } << {
  \drumpickup \drumverse
  }
  >>
    
\score {
  <<
    \trumpetstaff
    \bassstaff
    \drumstaff
  >>
  \layout { 
    \context { \Staff \RemoveEmptyStaves }
    \override Score.TimeSignature.
    break-visibility = #all-invisible
  }
}