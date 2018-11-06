SELECT TOP 1 p.Persnr, p.Name, art.Bezeichnung, art.Preis
  FROM [Personal] p
  INNER JOIN [Auftrag] auf ON auf.Persnr = p.Persnr
  INNER JOIN [Auftragsposten] ap ON ap.AuftrNr = auf.AuftrNr
  INNER JOIN [Artikel] art ON art.Anr = ap.Artnr
  ORDER BY art.Preis DESC
