object CYK extends App {
  case class Grammar(V: Set[Char],
                     Σ: Set[Char],
                     P: List[(Char, String)],
                     S: Char)

  def CYK(word: String, G: Grammar): Boolean = {
    val n = word.length
    val T = Array.

  }

  val G = Grammar(
    V = Set('S', 'A', 'F', 'C', 'E', 'B', 'D'),
    Σ = Set('a', 'b', 'c'),
    S = 'S',
    P = List('S' -> "AB",
             'A' -> "CD",
             'A' -> "CF",
             'B' -> "EB",
             'F' -> "AD",
             'B' -> "c",
             'C' -> "a",
             'D' -> "b",
             'E' -> "c")
  )

  val word = "aaabbbc"
  val result = CYK(word, G)

  result match {
    case true =>
      println(s"'$word' ∈ L(G)")
    case false =>
  }
}
