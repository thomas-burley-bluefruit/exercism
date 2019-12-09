#ifndef PANGRAM_H
#define PANGRAM_H

#include <stdbool.h>
#include <stdio.h>
#include <string.h>

enum { MAX_SENTENCE_LENGTH = 128 };

bool is_pangram(const char *sentence);

#endif
