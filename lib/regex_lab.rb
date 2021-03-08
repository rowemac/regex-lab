require 'pry'

def starts_with_a_vowel?(word)
    if word.match(/^[aeiou]|^[AEIOU]/)
        return true
    else
        return false
    end
end

def words_starting_with_un_and_ending_with_ing(text)
    text.scan(/un\w+ing/)
end

def words_five_letters_long(text)
    new_array = text.split(" ")
    new_array.grep(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    #binding.pry
    if text.match(/^[A-Z]/) && text.match(/[\.]$/)
        return true
    else
        return false
    end
end

def valid_phone_number?(phone)
    #binding.pry
    if phone.match(/(\([0-9]{3}\)([0-9]{3}-[0-9]{4})\b)/) ||
        phone.match(/\b([0-9]{7})\b/) ||
        phone.match(/([0-9] ?){10}/)
        true
    else
        false
    end
end
