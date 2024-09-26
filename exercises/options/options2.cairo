// options2.cairo

#[test]
fn test_options() {
    let target = 'starklings';
    let optional_some = Option::Some(target);
    let optional_none: Option<felt252> = Option::None;
    simple_option(optional_some);
    simple_option(optional_none);
}

fn simple_option(optional_target: Option<felt252>) {
    // Use the `is_some` method to check if `optional_target` contains a value.
    if optional_target.is_some() {
        assert(optional_target.unwrap() == 'starklings', 'err1');
    } else {
        // Use the `is_none` method to check if `optional_target` is None.
        assert(optional_target.is_none(), 'err2');
        println!("option is empty!");
    }
}