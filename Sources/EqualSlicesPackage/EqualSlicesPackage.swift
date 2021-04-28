/*
struct EqualSlicesPackage {
    var text = "Hello, World!"
}
*/
func equalSlices(totalSlices: Int, recipients: Int, perRecipientSlices slices: Int) -> Bool {
    guard recipients >= 0 else { return true }
    return totalSlices >= recipients * slices
}
