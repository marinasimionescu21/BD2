CREATE PROCEDURE all_about_residents_cons
AS 
BEGIN
    SELECT R.CNP AS CNP, R.Nume + ' ' + R.Prenume AS Nume,
    A.Nume + ' ' + A.Prenume AS Nume_angajat,
    C.ID, C.Etaj,
    P.Progres,
    AP.Nume + ' ' + AP.Prenume AS Nume_apartinator,
    AP.nr_telefon,
    COUNT(V.id_vizita) AS Numar_vizite
    FROM Rezident R
    JOIN Vizite V ON V.id_rezident = R.CNP
    JOIN Plan_ingrijire P ON R.CNP = P.id_rezident
    JOIN Angajati A ON P.id_angajat = A.ID
    JOIN Apartinator AP ON AP.id_rezident = R.CNP
    JOIN Camera C ON R.id_camera = C.ID
    GROUP BY R.CNP, R.Nume, R.Prenume, 
    A.Nume, A.Prenume, 
    C.ID, C.Etaj, P.Progres, AP.Nume, AP.Prenume, AP.nr_telefon, 
    V.Data_vizita
    HAVING V.Data_vizita > '2022-12-31'
    ORDER BY R.Nume
END


