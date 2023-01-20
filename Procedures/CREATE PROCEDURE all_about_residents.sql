CREATE PROCEDURE all_about_residents
AS 
BEGIN
    SELECT R.NUME + ' ' + R.Prenume AS Nume, R.CNP, R.Data_nasterii, R.id_camera,
    A.Nume + ' ' + A.Prenume AS Nume_angajat,
    P.id_plan, P.Obiective, P.Progres,
    V.Nume_vizitator + ' ' + V.Prenume_vizitator AS Nume_vizitator,
    V.Data_vizita AS Data_vizita,
    AP.Nume + ' ' + AP.Prenume AS Nume_apartinator,
    AP.nr_telefon AS Telefon_apartinator,
    (C.Nr_persoane_camera - 1) AS Nr_colegi_camera,
    C.Etaj AS Etaj_camera,
    AM.Detalii AS Detalii_alerta
    FROM Rezident R
    JOIN Plan_ingrijire P ON R.CNP = P.id_rezident
    JOIN Angajati A ON P.id_angajat = A.ID
    JOIN Vizite V ON V.id_rezident = R.CNP
    JOIN Apartinator AP ON AP.id_rezident = R.CNP
    JOIN Camera C ON R.id_camera = C.ID
    LEFT JOIN Alerta_medicala AM ON AM.id_rezident = R.CNP
    GROUP BY R.NUME, R.Prenume, R.CNP, R.Data_nasterii, R.id_camera,
    A.Nume, A.Prenume, P.id_plan, P.Obiective, P.Progres,
    V.Nume_vizitator, V.Prenume_vizitator, V.Data_vizita,
    AP.Nume, AP.Prenume, AP.nr_telefon, C.Nr_persoane_camera, C.Etaj, AM.Detalii
    ORDER BY R.Nume
END


