//prelude
use std::io;

fn main() {
    println!("Guess what's up!");
    println!("Seriously, try to guess what is actually up?");

    //mutable variable
    let mut guess = String::new();

    io::stdin()
        .read_line(&mut guess)
        .expect("Failed to read the line");

    println!("b., you guessed it: {guess}");
}
