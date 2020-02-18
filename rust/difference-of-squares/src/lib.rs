fn sum_up_to(n: u32) -> u32 {
    match n {
        0 => return 0,
        _ => return n + sum_up_to(n - 1),
    }
}

pub fn square_of_sum(n: u32) -> u32 {
    return sum_up_to(n).pow(2);
}

pub fn sum_of_squares(n: u32) -> u32 {
    match n {
        0 => return 0,
        _ => return n.pow(2) + sum_of_squares(n - 1),
    }
}

pub fn difference(n: u32) -> u32 {
    return square_of_sum(n) - sum_of_squares(n);
}
