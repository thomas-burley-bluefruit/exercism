pub fn raindrops(n: u32) -> String {
    let mut rain_drops = String::new();

    if n % 3 == 0 {
        rain_drops.push_str("Pling");
    } 

    if n % 5 == 0 {
        rain_drops.push_str("Plang");
    } 

    if n % 7 == 0 {
        rain_drops.push_str("Plong");
    } 

    if rain_drops.is_empty(){
        rain_drops.push_str(&n.to_string());
    }

    return rain_drops;
}
