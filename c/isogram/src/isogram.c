#include "isogram.h"
#include <string.h>

bool is_isogram(char phrase[])
{
  if (phrase == NULL)
  {
    return false;
  }
  const int numberOfLetters = strlen(phrase);

  for (int i = 0; phrase[i]; i++)
  {
    phrase[i] = tolower(phrase[i]);
  }
  
  for (int i = 0; i < numberOfLetters; i++)
  {
    if (phrase[i] == ' ' || phrase[i] == '-')
    {
      continue;
    }
    //Compare memory addresses of current letter and it's last occurrence in the string
    if(memcmp(&phrase[i], strrchr(phrase, phrase[i]), sizeof(char*)))
    {
      return false;
    }
  }
  return true;
}

