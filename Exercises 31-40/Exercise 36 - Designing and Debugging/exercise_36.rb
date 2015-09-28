# http://learnrubythehardway.org/book/ex36.html

# Game Design Notes:
# Puzzler with no dangers, per se. Only ways out are to starve to death on purpose or after X turns, or to win.
# Time-machine based with 3 rooms:
# - Central time core
# - Numbers Room (1, 2, 3), activate by entering proper numbers
# - Letter Room (A, B, C), activate by entering proper words
# Rooms can only be activated with correct puzzle entry AND correct time of day.

$sykles = 100
  
def story_text(exposition)
  puts ("| #{exposition}")
end

def command_text(exposition)
  story_text("")
  puts ("+ #{exposition}")
  story_text("")
end

def location_text(locale)
  story_text("")
  story_text(("-" * ((locale.length)+10)))
  story_text("LOCATION: #{locale.upcase}")
  story_text(("-" * ((locale.length)+10)))
end

def sykles_remaining
  command_text("Sykles until the time wizard returns: (#{$sykles}).")
  sykles_check
end

def sykles_check
  if $sykles == 0
    story_text("Kronus has returned to his laboratory through the time portal with a fully recharged Rod of Ages.")
    story_text("He instantly detects you outside of your cage and teleports behind you, most displeased.")
    story_text("Your body collapses into a micro-singularity and is deposited into the tower's furnace.")
    command_text("GAME OVER")
    exit(0)
  end
end

def intro
  command_text("GAME START")
  location_text("The Timestream")
  story_text("Long ago, you were tending to your cottage garden on the outskirts of a medieval hamlet.")
  story_text("On that pleasant summer morning, the evil time-wizard Kronus tore open a portal in time, dragging you into the vortex.")
  story_text("While falling for an eternity through the psychedelic abyss you noticed an approaching darkness.")
  story_text("Impacting with incredible force, you were prepared for death to take you beyond.")
  story_text("...")
  story_text("But you awoke hazily, feeling damp stone and cold iron, already aware that there were other cells nearby.")
  story_text("Imprisoned in his temporal laboratory, you were one of many 'samples' stolen from time.")
  story_text("However, you were the only human being to be captured, and you've been watching endlessly for a way out...")
end

def cellblock
  location_text("The Cellblock")
  command_text("Kronus enters.")
  story_text("For the countlessth time, the time-wizard enters the cellblock and scowls at those incarcerated.")
  story_text("Pretending to be despondent (which isn't that hard, really), you hope his gaze passes over you.")
  story_text("He turns toward another cluster of cages and you steal a glance. He has the Rod of Ages with him!")
  story_text("You painfully remember every use of that fiendish device, but also recall that he hasn't charged it in eons.")
  story_text("He raises the Rod, which begins to glow... but sputters out into darkness.")
  story_text("Kronus devishly grins, 'You are lucky, little imps. My precious must now feed on temporal energies. But afterwards...'")
  command_text("Kronus exits.")
  story_text("Time to act! It will take him at least #{$sykles} to recharge the Rod from the deepest well of the timestream.")
  story_text("Having seen him draw the Rune of Opening on the gateway locks, you open your cage and exit the cellblock.")
end

def room_portal
  location_text("The portal room")
end

### Begin game sequence

intro
sykles_remaining
cellblock
room_portal
