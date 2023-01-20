CREATE PROCEDURE all_about_angajati
AS 
BEGIN
    SELECT A.Nume AS 'Nume', 
    A.Prenume AS 'Prenume', 
    A.Functie AS 'Functie', 
    A.email AS 'Email', 
    R.CNP AS 'CNP Rezident',
    P.Obiective AS 'Obiective'
    FROM Angajati A
    JOIN Plan_ingrijire P ON A.ID = P.ID_angajat
    JOIN Rezident R ON P.ID_rezident = R.CNP
    GROUP BY A.Nume, A.Prenume, A.Functie, A.email, R.CNP, P.Obiective
END


