SELECT Priznanje_pb.sifra_dok, Priznanje_pb.Upisni_broj Upisni_broj, 
Priznanje_pb.Datum_prijavljivanja, 
Priznanje_pb.Ime_sorte, Vrsta.Vrsta_hrv, Vrsta.Vrsta_lat, 
Partner.Ime_partnera, Priznanje_pb.Sifra_zahtjeva, Priznanje_pb.Oznaka_sorte,
Priznanje_pb.VCU_oznaka VCU, Priznanje_pb.DUS_oznaka DUS
FROM Priznanje_pb
   LEFT OUTER JOIN Vrsta
   ON  (Priznanje_pb.Sifra_vrste = Vrsta.Sifra_vrste)
   LEFT OUTER JOIN Partner
   ON  (Priznanje_pb.Sifra_podnositelja = Partner.Sifra_partnera)  
