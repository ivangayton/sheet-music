\version "2.18.2"
%\include "predefined-guitar-fretboards.ly"

\header {
  title = "Night Life"
  subtitle = ""
  composer = "Willie Nelson"
  tagline = \markup {
    \column {
      "Night Life by Wille Nelson"
      "Arranged by Dave Botkin and Ivan Gayton"
      "Summerland, BC 2025"
    }
  }
}

\markup \vspace #1

intro = \chordmode {
  c2 a2:m d2 g2
}
versechords = \chordmode {
  c1 c:7 f f:m
}
turnaround = \chordmode {
  c2 f c g
}
falldown = \chordmode {
  c2 b4 bes a1:m
}
climbup = \chordmode {
  d4 e f ges g1
}
finale = \chordmode {
  c2 f c4 b8 c1:7
  
}

 
changes = \chordmode {
    \intro \intro \break
    \versechords \intro \intro \break
    \versechords \intro \turnaround \break
    \versechords \intro \break
    \versechords \intro \turnaround \break
    \pageBreak
    %solo section
    \versechords \intro \intro \break
    %end solo
    \versechords \intro \falldown \break
    \climbup \falldown \break
    \climbup \finale
}

<<
  \new ChordNames \chordmode {
    \changes
  }
  \new Voice = "chordchanges" \with {
    \consists "Pitch_squash_engraver"
  } \relative c'' {
    \improvisationOn
    \override TextScript.fret-diagram-details.number-type = #'arabic
    %\override TextScript.size = 1.2
    c4^\markup {
      \fret-diagram "6-x;5-x;4-10;3-9;2-8;1-8;"
    }
    c 
    a^\markup {
      \fret-diagram "6-x;5-x;4-x;3-9;2-10;1-8;"
    }
    a | 
    d^\markup {
      \fret-diagram "6-x;5-x;4-12;3-11;2-10;1-10;"
    } 
    d 
    g ^\markup {
      \fret-diagram "6-x;5-8;4-10;3-10;2-10;1-8;"
    }
    g | 
    c c c c | c c c c | c4 c c c | 
    c^\markup {
      \fret-diagram "6-x;5-x;4-10;3-9;2-11;1-8;"
    }
    c c c | 
    f^\markup {
      \fret-diagram "6-x;5-8;4-10;3-10;2-10;1-8;"
    }
    c c c | 
    f^\markup {
      \fret-diagram "6-x;5-8;4-10;3-10;2-9;1-8;"
    } 
    c 
    f^\markup {
      \fret-diagram "6-x;5-x;4-15;3-13;2-13;1-13;"
    }
    c|
    \repeat unfold 26 {c4 c c c }

    c^\markup \italic "Solo 8 bars (vocal pickup at end of bar 8)" 
    c c c | c c c c
    \repeat unfold 20 { c4 c c c }
    c4 c c c | c c c2\fermata 
    
  }
  \new Lyrics \lyricsto "chordchanges" {
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    When_the evening _ _ sun_goes down _ _
    you_can find me just hangin'_a- round _ _
    and_the night_life _
    It ain't_a good_life _ _ but_it's my_life _ _ _ _ _ _
    
    Lonely people _ _ just_like me _
    We're dreamin' of _ old used_to be _ _
    and_the night life 
    It ain't a_good life _ but_it's my_life _ _ _ _ _ _
    
    Just listen _ to_the blues_they're playin' _ _
    And_then listen _ to_what_the blues_are sayin'
    
    _ _ _ _ _ _ _ _ _ _
    
    Well_it's just _ _ another scene _ _
    from_a world _ _ of_broken dreams _ _
    and_the night_life _
    It ain't_a good_life _ _ but_it's my_life _ _ _ _ _ _ _
    
    _ _ _ _   _ _ _ _    _ _ _ _   _ _ _ _
    _ _ _ _   _ _ _ _    _ _ _ _   _ _ _ 
    
    When_you're livin' _ _ all_a- lone _ _
    One_small room _ _ to_call_your home _ _
    and_the night_life _
    It ain't_a good_life _ _ but_it's my_life _ _ _ _ _ _
    Oh_yes_the night_life _
    It ain't_a good_life _ _ but_it's my_life _ _ _ _ _ _
    Oh_yes_the night_life _
    It ain't_a good_life _ _ but_it's my_life _ _ _ _ _ _ _
    
  }
>>