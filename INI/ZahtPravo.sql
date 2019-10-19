SELECT CAST(Zahtjev_Pravo.sifra_dok as CHAR)+' '+ Zahtjev_Pravo.Upisni_broj Upisni_broj, 
Zahtjev_Pravo.Datum_prijavljivanja, 
PB.Ime_sorte, Vrsta.Vrsta_hrv, Vrsta.Vrsta_lat, 
Partner.Ime_partnera, Zahtjev_Pravo.Sifra_zahtjeva, PB.Oznaka_sorte
FROM "Zahtjev_Pravo.DB" Zahtjev_Pravo
   LEFT OUTER JOIN "Priznanje_PB.DB" PB
   ON  (Zahtjev_Pravo.Sifra_ZPriznavanja = PB.Sifra_zahtjeva)
   LEFT OUTER JOIN "Vrsta.DB" Vrsta
   ON  (PB.Sifra_vrste = Vrsta.Sifra_vrste)
   LEFT OUTER JOIN "Partner.DB" Partner
   ON  (Zahtjev_Pravo.Sifra_podnositelja = Partner.Sifra_partnera)  
