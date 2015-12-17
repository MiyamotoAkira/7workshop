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
}
