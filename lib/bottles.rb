class Bottles
  def song
    verses(99, 0)
  end
  def verses(initial_number, final_number)
    number = initial_number
    text = ''
    while number >= final_number
      text += verse(number)
      text += "\n" unless number == final_number
      number -= 1
    end
    text
  end
  def verse(number_of_bottles)
    new_bottle_number = number_of_bottles - 1

    text = "#{bottle_number_text(number_of_bottles, true)} #{bottle_word_format(number_of_bottles)} of beer on the wall, #{bottle_number_text(number_of_bottles)} #{bottle_word_format(number_of_bottles)} of beer.\n"

    if number_of_bottles > 0
      text += "Take #{number_of_bottles > 1 ? 'one' : 'it'} down and pass it around, #{bottle_number_text(new_bottle_number)} #{bottle_word_format(new_bottle_number)} of beer on the wall.\n"
    else
      text += "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def bottle_word_format(number)
    return 'bottle' if number == 1

    return 'bottles'
  end

  def bottle_number_text(number, first_letter_uppercase = false)
    return "#{number}" unless number < 1
    return first_letter_uppercase ? 'No more' : 'no more'
  end
end
