#include "darts.h"
#include <math.h>

int score(coordinate_t position)
{
  int score;
  float distanceFromCenter = sqrt((pow(position.x, 2) + pow(position.y, 2)));
  if (distanceFromCenter > 10)
  {
    score = 0;
  }
  else if(distanceFromCenter > 5)
  {
    score = 1;
  }
  else if (distanceFromCenter > 1)
  {
    score = 5;
  }
  else
  {
    score = 10;
  }
  return score;
}