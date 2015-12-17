import scala.xml._

trait FileReader {
	val filePath : String
	val xmlContent = XML.loadFile(filePath)
}


class XmlConverter(val filePath: String) extends FileReader {
	  def print() {
	  	  val pages = xmlContent \ "page"
		  pages.foreach(page => println(page.text))
	  }
}