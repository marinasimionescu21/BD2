CREATE TRIGGER update_care_plan
ON Alerta_Medicala
AFTER INSERT
AS 
BEGIN
   DECLARE @id_alerta INT;
   DECLARE @id_rezident NUMERIC(13);
   DECLARE @id_personal INT;
   DECLARE @detalii_alerta NCHAR(100);
   DECLARE @id_plan INT;
   DECLARE @email_personal NVARCHAR(50);
   
   SELECT @detalii_alerta = i.Detalii, @id_rezident = i.id_rezident, @id_personal = i.id_personal, @id_alerta = i.id_alerta
   FROM Alerta_medicala i;

   SELECT @id_plan = cp.id_plan
   FROM Plan_ingrijire cp
   JOIN Rezident r ON cp.id_rezident = r.CNP
   WHERE r.CNP = @id_rezident;

   SELECT @email_personal = p.email
    FROM Angajati p
    WHERE p.ID = @id_personal;

   UPDATE Plan_ingrijire
   SET Ultima_alerta = @detalii_alerta
   WHERE id_plan = @id_plan;

   INSERT INTO Email_angajati (id_email, id_angajat, tip_email)
    VALUES (@id_alerta + 1, @id_personal, 'ALERTA MEDICALA NOUA: ' + CAST(@id_rezident AS NVARCHAR(13)));

END


