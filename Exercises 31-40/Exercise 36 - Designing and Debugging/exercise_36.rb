# http://learnrubythehardway.org/book/ex36.html

# Game Design Notes:
# Puzzler with no dangers, per se. Only ways out are to starve to death on purpose or after X turns, or to win.
# Time-machine based with 3 rooms:
# - Central time core
# - Numbers Room (1, 2, 3), activate by entering proper numbers
# - Letter Room (A, B, C), activate by entering proper words
# Rooms can only be activated with correct puzzle entry AND correct time of day.

$sykles = 101
$time_dial = "present"
$time_portal = "inactive"

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

def sykles_check
  if $sykles <= 0
    story_text("Kronus has returned to his laboratory through the time portal with a fully recharged Rod of Ages.")
    story_text("He instantly detects you outside of your cage and teleports behind you, most displeased.")
    story_text("Your body collapses into a micro-singularity and is deposited into the tower's furnace.")
    command_text("GAME OVER")
    exit(0)
  end
end

def sykles_remaining
  $sykles -= 1
  command_text("Sykles until the time wizard returns: (#{$sykles}).")
  sykles_check
end

def user_continue
  command_text("Press ENTER to continue.")
  $stdin.gets
end

# def action_or_move(action_text, action_word, action_action, move_text, move_word, move_action)
#   command_text("Do you wish to #{action_text}, or #{move_text}?")
#   response = $stdin.gets.chomp
#   if response.include? (action_word)
#     action_action
#   elsif response.include? (move_word)
#     move_action
#   else
#     story_text("There's no time to goof around! The wizard will returning!")
#     sykles_remaining
#   end
# end

### Actions

# def action_activate_time_dial
#   story_text("You activate the time dial.")
# end

# def action_time_dial_options
#   story_text("Here are the time dial options:")
# end 



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
  user_continue
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
  story_text("Time to act! It will take him at least #{$sykles} sykles to recharge the Rod from the deepest well of the timestream.")
  story_text("Having seen him draw the Rune of Opening on the gateway locks, you open your cage and exit the cellblock.")
  sykles_remaining
  user_continue
end

def room_portal_intro
  story_text("You stand in the circular room that houses the heart of the tower: The Time Portal.")
  story_text("You've seen the mechanism operated before - it's controlled mentally.")
  story_text("Unfortunately, it requires three locks to be opened before the portal itself can be opened.")
  story_text("For Kronus, this is trivial. He can simply control time and space. But you must use the time dial on the portal control.")
  user_continue
end

def room_portal
  location_text("The portal room, the #{$time_dial}")
  command_text("The time portal is: (#{$time_portal}).")
  story_text("Innumerable doors line the perimeter, but you know the three needed.")
end

### Begin game sequence

intro
cellblock
room_portal_intro
room_portal
