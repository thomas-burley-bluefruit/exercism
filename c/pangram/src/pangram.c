#include "pangram.h"

bool is_pangram(const char *sentence)
{
  if (sentence == NULL)
  {
    return false;
  }
  
  int length = strlen(sentence);
  
  char sentenceLowerCase[MAX_SENTENCE_LENGTH];

  for (int i = 0; i < length; i++)
  {
    sentenceLowerCase[i] = tolower(sentence[i]);
  }
  sentenceLowerCase[length] = 0;

  bool characters[26];
  for (int i = 0; i < 26; i++)
  {
    characters[i] = false;
  }

  int charsMatched = 0;

  for (int i = 0; i < length; i++)
  {
    if (sentenceLowerCase[i] < 97 || sentenceLowerCase[i] > 122) // Current char is a - z
      continue;

    int currentChar = sentenceLowerCase[i] - 97;

    if (characters[currentChar] == false)
    {
      characters[currentChar] = true;
      charsMatched++;
    }

    if (charsMatched == 26)
      return true;
  }

  return false;
}