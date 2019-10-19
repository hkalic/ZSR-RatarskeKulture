SELECT   (CAST( Zahtjev_Pravo.sifra_dok AS CHAR(2) ) + ' ')  + Zahtjev_Pravo.Upisni_broj  Upisni_broj, Zahtjev_Pravo.Datum_prijavljivanja, PB.Ime_sorte, Vrsta.Vrsta_hrv, Partner.Ime_partnera, Zahtjev_Pravo.Sifra_zahtjeva, PB.Oznaka_sorte, Upisnik_detail.Sifra_upisnika
FROM "Zahtjev_Pravo.DB" Zahtjev_Pravo
   LEFT OUTER JOIN "Priznanje_PB.DB" PB
   ON  (Zahtjev_Pravo.Sifra_ZPriznavanja = PB.Sifra_zahtjeva)  
   LEFT OUTER JOIN "Partner.DB" Partner
   ON  (Zahtjev_Pravo.Sifra_podnositelja = Partner.Sifra_partnera)  
   LEFT OUTER JOIN "Upisnik_detail.DB" Upisnik_detail
   ON  (Upisnik_detail.Sifra_upisnika = Zahtjev_Pravo.Sifra_zahtjeva)  
   LEFT OUTER JOIN "Vrsta.DB" Vrsta
   ON  (PB.Sifra_vrste = Vrsta.Sifra_vrste)  
