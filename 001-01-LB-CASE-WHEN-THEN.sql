USE FirmaUebung;
GO

SELECT [Abteilung],
       [Projektabteilung],
	   [Kommentar]
FROM [Abteilung]
ORDER BY [Abteilung];

-- Sample - Textspalte oder Formel --
SELECT [Abteilung],
       [Projektabteilung],
	   'ABC' AS 'Textbeispiel',
	   (1 + 2) AS 'Summe',
	   CURRENT_TIMESTAMP AS 'Jetzt'
FROM [Abteilung]
ORDER BY [Abteilung];

SELECT [Abteilung],
       [Projektabteilung],
	   CASE
			WHEN ([Projektabteilung] = 0) THEN 'Nein'
			WHEN ([Projektabteilung] = 1) THEN 'Ja'	
	   END
	   AS 'Ist Projektabteilung',
	   [Kommentar]
FROM [Abteilung]
ORDER BY [Abteilung];


SELECT [Abteilung],
       [Projektabteilung],
	   CASE
			WHEN ([Projektabteilung] = 0) THEN 'Nein'
			ELSE 'Ja'	
	   END  AS 'Ist Projektabteilung',
	   [Kommentar]
FROM [Abteilung]
ORDER BY [Abteilung];


SELECT [Abteilung],
       [Projektabteilung],
	   CASE
			WHEN ([Projektabteilung] = 0) THEN 'Nein'
			-- WHEN ([Projektabteilung] = 1) THEN 'Ja'	-- dann sehen wir NULL
	   END
	   AS 'Ist Projektabteilung',
	   [Kommentar]
FROM [Abteilung]
ORDER BY [Abteilung];
