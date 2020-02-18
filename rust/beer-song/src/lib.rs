fn bottle_string(n: u32) -> String {
    if n < 1 {
        String::from("no more bottles")
    } else if n == 1 {
        String::from("1 bottle")
    } else {
        String::from(format!("{} bottles", n))
    }
}

fn pronoun_string(n: u32) -> String {
    if n > 1 {
        String::from("one")
    } else {
        String::from("it")
    }
}

pub fn verse(n: u32) -> String {
    if n <= 0 {
        String::from("No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n")
    } else {
        String::from(format!(   "{0} of beer on the wall, {0} of beer.\nTake {1} down and pass it around, {2} of beer on the wall.\n", 
                                        bottle_string(n),
                                        pronoun_string(n),
                                        bottle_string(n-1)))
    }
}

pub fn sing(start: u32, end: u32) -> String {
    (end..start + 1)
        .map(|n| verse(n))
        .rev()
        .collect::<Vec<String>>()
        .join("\n")
}
