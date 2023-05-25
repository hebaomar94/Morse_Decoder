var englishText = "this is a secret message"

var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

// Add your code below 🤫
var lettersToMorse: [String: String ] = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--..",
  ".": ".-.-.-",
  "!": "-.-.--",
  "?": "..--..",
  ",": "--..--"
]

var morseText = ""

// Loop through each character in englishText
for element in englishText{
// Check if the value exists
if let morseChar = lettersToMorse["\(element)"]{
//Append the letter to morseText
morseText += morseChar + " "
} else {
// Append 3 spaces to morseText
  morseText+="  "
  } 
}
print(morseText)

//Create an empty String called decodedMessage.
var decodedMessage = ""
//We are going to use an array to store these individual Morse code letters
var morseCodeArray = [String]()
//we’ll use currMorse to keep track of our current Morse code letter.
var currMorse = ""
//We are going to iterate through each character of secretMessage.

for char in secretMessage {
 // we want to check the character value of the current iteration.
  if char != " "{
      currMorse.append(char)
  }else {
    switch currMorse {
      case "":
      currMorse += " "
      case " ":
      morseCodeArray.append(" ")
       currMorse = ""
        default: 
        morseCodeArray.append(currMorse)
        currMorse = ""
    }
  }
}
// Append the final value of currMorse to morseCodeArray
morseCodeArray.append(currMorse)
//Print the value of morseCodeArray to see each Morse code
//print (morseCodeArray)
//Instead of initializing it with all the values, we are going to loop through letterToMorse to populate our new dictionary
var morseToLetter: [String: String] = [:]

for (letter,morseChar) in lettersToMorse{
  morseToLetter[morseChar]=letter
}
//Create a for-in loop that iterates through the keys and the values of the letterToMorse dictionary.
for morseValue in morseCodeArray {
  // Check if the value exists in the morseToLetter dictionary
  if let letterChar = morseToLetter[morseValue]{
    //Append the values to decodedMessage
    decodedMessage += letterChar
  }
  //if it's not in the dictionary, it's probably a space
  else {
    // Add a space to decodedMessage
    decodedMessage += " "
  }
}
print (decodedMessage)




