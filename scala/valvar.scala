val value = 5
//value = 6
val value = 6

var mutable = 6
mutable = 7


class MyObject (val  value : Integer) {
  def setValue(newValue: Integer) {
    value = newValue
  }

  def getValue() = value
}
