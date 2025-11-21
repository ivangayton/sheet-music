\version "2.24.3"
#(set-global-staff-size (* 22 1.2))

\header {
  title = "Basic Drum Kit Exercises"
  composer = "Homeschool Groove Concert Band"
  tagline = \markup \italic {
    \column {
      "Homeschool Groove Concert Band,"
      "Summerland, BC, Canada 2025"
    }
  }
}

\markup \bold {
  Basic Rock Beat
}

\new DrumStaff <<
  \drummode {
    << {
      \repeat unfold 8 hh4
    } \\ {
      bd4 s sn s bd s sn s 
    } >>
  }
>>

\markup \bold {
  Groove 1 (same basic pattern as Crunch Time)
}
\new DrumStaff <<
  \drummode {
    << {
      \repeat unfold 8 hh4
    } \\ {
      bd4 s sn s s bd sn s 
    } >>
  }
>>

\markup \bold {
  Groove 2
}

\new DrumStaff <<
  \drummode {
    << {
      \repeat unfold 8 hh4
    } \\ {
      bd4 s sn s bd bd sn s 
    } >>
  }
>>
\markup \bold {
  Groove 3
}
\new DrumStaff <<
  \drummode {
    << {
      \repeat unfold 8 hh4
    } \\ {
      bd4 s sn bd bd s sn s 
    } >>
  }
>>
\markup \bold {
  Bonus Groove—Syncopation
}
\new DrumStaff <<
  \drummode {
    << {
      \repeat unfold 8 hh4
    } \\ {
      bd4 s sn bd bd r8 bd sn4 s 
    } >>
  }
>>

\paper {
  indent = 0
  %ragged-last-bottom = ##f
  top-system-spacing = #'((minimum-distance . 10))
  last-bottom-spacing = #'((minimum-distance . 25))
}



