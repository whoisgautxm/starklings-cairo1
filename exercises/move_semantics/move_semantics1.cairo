// move_semantics1.cairo
// Execute `starklings hint move_semantics1` or use the `hint` watch subcommand for a hint.

use debug::PrintTrait;

fn main() {
    let arr0 = ArrayTrait::new();

    let mut arr1 = fill_arr(arr0);

    // This is just a print statement for arrays.
    arr1.clone().print();

    arr1.append(88);

    arr1.print();
}

fn fill_arr(arr: Array<felt252>) -> Array<felt252> {
    let mut arr = arr;

    arr.append(22);
    arr.append(44);
    arr.append(66);

    arr
}