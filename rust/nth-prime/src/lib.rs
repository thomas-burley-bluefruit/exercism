fn factor_limit(n: u32) -> u32 {
    ((n as f64).sqrt().floor() as u32) + 1
}

fn is_prime(n: u32) -> bool {
    n != 1 && !(2..factor_limit(n)).any(|i| n % i == 0)
}

pub fn nth(n: u32) -> u32 {
    (2..)
        .filter(|&x| is_prime(x))
        .take(n as usize + 1)
        .last()
        .unwrap()
}
