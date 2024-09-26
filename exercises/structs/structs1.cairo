// structs1.cairo
// Address all the TODOs to make the tests pass!

#[derive(Copy, Drop)]
struct ColorStruct {
    red: felt252,
    green: felt252,
    blue: felt252,
}

#[test]
fn classic_c_structs() {
    // Instantiate a classic color struct!
    // Green color needs to have green set to 255 and, red and blue, set to 0
    let green = ColorStruct { red: 0, green: 255, blue: 0 };

    assert(green.red == 0, 0);
    assert(green.green == 255, 0);
    assert(green.blue == 0, 0);
}