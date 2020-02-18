fn isbn_character_to_int(index: usize, c: char) -> Result<u32, &'static str> {
    match (index, c) {
        (_,'0'..='9') => Ok(c.to_digit(10).unwrap()),
        (9,'X')       => Ok(10),
        _             => Err("Invalid character")
    }
}

fn format_isbn(isbn: String) -> Result<Vec<u32>, &'static str> {
    isbn.chars()
        .filter(|&c| c != '-')
        .enumerate()
        .map(|(n, c)| isbn_character_to_int(n, c))
        .collect()
}

/// Determines whether the supplied string is a valid ISBN number
pub fn is_valid_isbn(isbn: &str) -> bool {
    match format_isbn(isbn.to_string()){
        Ok(isbn) => isbn.len() == 10 &&
                    isbn.iter()
                        .zip((1..=10).rev())
                        .map(|c| c.0 * c.1)
                        .sum::<u32>() % 11 == 0, 
        Err(_) => false
    }
}
