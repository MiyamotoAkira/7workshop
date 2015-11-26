class SimpleObject(aValue:Integer) {
  def getValue = aValue

  def returnAValue (selection : Integer) {

    if (selection == 1)
      return  5
    else
      return "a"

  }
}


object SimpleObject {
  def apply(aValue:Integer) = new SimpleObject(aValue)
}
