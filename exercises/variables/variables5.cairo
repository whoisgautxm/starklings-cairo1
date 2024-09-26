
fn main() {
    let number = 1_u8; // don't change this line
    println!("number is {}", number);
    let number = 3; // shadowing the previous 'number' variable
    println!("number is {}", number);
}