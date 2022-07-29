USE Monkeypox;

DELETE FROM dbo.Monkeypox_World
 WHERE Date_confirmation = NULL;
 GO


 SELECT Date_confirmation from dbo.Monkeypox_World
  WHERE Date_confirmation = NULL;
GO

DELETE FROM dbo.Monkeypox_World 
 WHERE Country = NULL;
 GO

  SELECT Country from dbo.Monkeypox_World
  WHERE Country = NULL;
GO

 SELECT * from dbo.Monkeypox_World
 GO

update dbo.Monkeypox_World
set Country = 'NONE' where Country is NULL;

update dbo.Monkeypox_World
set City = 'NONE' where City is NULL;

update dbo.Monkeypox_World
set Age = 'NONE' where Age is NULL;

update dbo.Monkeypox_World
set Gender = 'NONE' where Gender is NULL;

update dbo.Monkeypox_World
set Symptoms = 'NONE' where Symptoms is NULL;

update dbo.Monkeypox_World
set Hospitalised_Y_N_NA = 'NONE' where Hospitalised_Y_N_NA is NULL;

update dbo.Monkeypox_World
set Isolated_Y_N_NA = 'NONE' where Isolated_Y_N_NA is NULL;

update dbo.Monkeypox_World
set Travel_history_Y_N_NA = 'NONE' where Travel_history_Y_N_NA is NULL;


UPDATE dbo.Monkeypox_World
SET 
    Travel_history_Y_N_NA = REPLACE(Travel_history_Y_N_NA, '1', 'YES');

UPDATE dbo.Monkeypox_World
SET 
    Travel_history_Y_N_NA = REPLACE(Travel_history_Y_N_NA, '0', 'NO');


UPDATE dbo.Monkeypox_World
SET 
    Isolated_Y_N_NA = REPLACE(Isolated_Y_N_NA, 'YESes', 'YES');

UPDATE dbo.Monkeypox_World
SET 
	Isolated_Y_N_NA = REPLACE(Isolated_Y_N_NA, 'N', 'NO');

UPDATE dbo.Monkeypox_World
SET 
	Isolated_Y_N_NA = REPLACE(Isolated_Y_N_NA, 'NOOONOOE', 'NONE');

UPDATE dbo.Monkeypox_World
SET 
    Hospitalised_Y_N_NA = REPLACE(Hospitalised_Y_N_NA, '1', 'YES');

UPDATE dbo.Monkeypox_World
SET 
    Hospitalised_Y_N_NA = REPLACE(Hospitalised_Y_N_NA, '0', 'NO');



 SELECT * from dbo.Monkeypox_World
 GO

 
