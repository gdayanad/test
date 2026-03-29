--SELECT  [KundenID],
--		[Nachname],
--		[Vorname],
--		[GebDat]--,		
--	/*
--	TODO: 
--	'jung' - wenn geboren ab 1980,
--	'mittelalt' - zwischen 1950 und 1979,
--	bis 1949 - 'alt',
--	wenn NULL - 'unbekannt'
--	AS 'Altersgruppe'	
--	*/
--FROM [FirmaUebung].[dbo].[Kunden];


-- L�sung Var. 1 mit YEAR--
SELECT  KundenID,
		Nachname,
		Vorname,
		GebDat,		
		CASE
			WHEN YEAR(GebDat) >= 1980 THEN 'jung'
			WHEN YEAR(GebDat) BETWEEN 1950 AND 1979 THEN 'mittelalt'
			WHEN YEAR(GebDat) <= 1949 THEN 'alt'
			WHEN GebDat IS NULL THEN 'unbekannt'
		END
		AS 'Altersgruppe'
FROM FirmaUebung.dbo.Kunden
ORDER BY GebDat;

-- L�sung Var. 2 ohne YEAR--
SELECT  KundenID,
		Nachname,
		Vorname,
		GebDat,		
		CASE
			WHEN GebDat >= '01.01.1980' THEN 'jung'
			WHEN GebDat BETWEEN '01.01.1950' AND '31.12.1979' THEN 'mittelalt'
			WHEN GebDat <= '31.12.1949' THEN 'alt'
			ELSE 'unbekannt' 
		END
		AS 'Altersgruppe'
FROM FirmaUebung.dbo.Kunden
ORDER BY GebDat;
-- test 
-- andere Sortierung
SELECT  KundenID,
		Nachname,
		Vorname,
		GebDat,		
		CASE
			WHEN GebDat >= '01.01.1980' THEN 'jung'
			WHEN GebDat BETWEEN '01.01.1950' AND '31.12.1979' THEN 'mittelalt'
			WHEN GebDat <= '31.12.1949' THEN 'alt'
			ELSE 'unbekannt' 
		END
		AS 'Altersgruppe'
FROM FirmaUebung.dbo.Kunden
ORDER BY Altersgruppe, GebDat;