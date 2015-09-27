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

def sykles_remaining
  command_text("Sykles until the time wizard returns: (#{$sykles}).")
  sykles_check
end

def sykles_check
  if $sykles == 0
    story_text("Kronus has returned to his laboratory, most displeased at your escape attempt.")
    story_text("He collapses your body into a micro-singularity and deposits your remains into the tower's furnace.")
    command_text("GAME OVER")
    exit(0)
  end
end

def intro
  story_text("------------------------")
  story_text("LOCATION: THE TIME TOWER")
  story_text("------------------------")
  story_text("Long ago, you were tending to your cottage garden on the outskirts of a medieval hamlet.")
  story_text("On that pleasant summer morning, the evil time-wizard Kronus tore open a portal in time, dragging you into the vortex.")
  story_text("While falling for an eternity through the psychedelic abyss you noticed an approaching darkness.")
  story_text("Impacting with incredible force, you were prepared for death to take you beyond.")
  story_text("But you awoke hazily, feeling damp stone and cold iron, already aware that there were other cells nearby.")
  story_text("Imprisoned in his temporal laboratory, you were one of many 'samples' stolen from time.")
  story_text("However, you were the only human being to be captured, and you've been watching endlessly for a way out...")
end

intro
sykles_remaining
