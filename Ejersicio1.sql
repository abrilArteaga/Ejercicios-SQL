Consignas
Mostrar el nombre y duración de las canciones del disco "Outbreak"
	SELECT name, Milliseconds FROM tracks
	WHERE AlbumId = (SELECT AlbumId FROM albums WHERE Title = "Outbreak")


