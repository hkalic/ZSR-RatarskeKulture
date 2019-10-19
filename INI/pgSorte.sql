SELECT 
P.Sifra_zahtjeva, 
P.Datum_prijavljivanja,
(CAST( P.Sifra_dok AS CHAR(1) ) || ' ')  || P.Upisni_broj  UBroj,
Podnositelj.Ime_partnera ImePodnositelja, 
Vlasnik.Ime_partnera ImeVlasnika,
Oplemenjivac.Ime_partnera ImeOplemenjivaca, 
P.Tehnicki_upitnik, 
P.VCU_oznaka VCU, 
P.DUS_oznaka DUS,
P.Oznaka_sorte, 
P.Ime_sorte, 
P.Namjena, 
P.Punomoc, 
Vrsta.Vrsta_hrv, 
Vrsta.Vrsta_lat, 
Brisanje.Broj_brisanja,
Brisanje.NN NNBrisanje, 
Brisanje.Datum_brisanja, 
Pravo.Broj_prava, 
Pravo.NN NNPravo,
Pravo.Datum_prava, 
Priznavanje.Broj_priznavanja, 
Priznavanje.NN NNPriznavanje, 
Priznavanje.Datum_priznavanja,
Odrzavanje.Broj_rjesenja, 
Odrzavanje.NN NNOdrzavanje, 
Odrzavanje.Datum_rjesenja

FROM Priznanje_PB P
   LEFT OUTER JOIN Partner Podnositelj
   ON  (P.Sifra_podnositelja = Podnositelj.Sifra_partnera)
   LEFT OUTER JOIN Partner Oplemenjivac
   ON  (P.Sifra_oplemenjivaca = Oplemenjivac.Sifra_partnera)
   LEFT OUTER JOIN Partner Vlasnik
   ON  (P.Sifra_vlasnik = Vlasnik.Sifra_partnera)
   LEFT OUTER JOIN Brisanje
   ON  (P.Sifra_zahtjeva = Brisanje.Sifra_zahtjeva)
   LEFT OUTER JOIN Pravo
   ON  (P.Sifra_zahtjeva = Pravo.Sifra_zahtjeva)
   LEFT OUTER JOIN Odrzavanje
   ON  (P.Sifra_zahtjeva = Odrzavanje.Sifra_zahtjeva)
   LEFT OUTER JOIN Priznavanje
   ON  (P.Sifra_zahtjeva = Priznavanje.Sifra_zahtjeva)
   LEFT OUTER JOIN Vrsta
   ON  (P.Sifra_vrste = Vrsta.Sifra_vrste)
