import scala.xml._
import scala.actors._
import Actor._

trait XmlFileReader {
  val fileName :String
  val xmlContent = XML.loadFile(fileName)
}

case object Process

class XmlProcessor(val fileName:String) extends Actor with  XmlFileReader {
  def outputInformation() {
    val pages = xmlContent \ "page"
    pages.foreach(page => println(page.text))
  }

  act () = {
    case Process => outputInformation
  }

  receive {
    case Process => outputInformation
  }
}

object XmlProcessor {
  def apply(fileName: String)  = new XmlProcessor(fileName)
}


class ProcessTheLot {
  def goForIt() {
    val processor = XmlProcessor("document1.xml")
    val processor2 = XmlProcessor("document2.xml")
    processor.outputInformation()
    processor2.outputInformation()
  }

  def actorMe() {
    val processor = XmlProcessor("document1.xml")
    val processor2 = XmlProcessor("document2.xml")
    val processes = List(processor, processor2)

    for(process <- processes) {
      actor {process ! Process }
    }
  }
}
