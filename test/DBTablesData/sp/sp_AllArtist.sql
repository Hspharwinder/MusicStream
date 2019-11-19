CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_AllArtist`()
BEGIN
	SELECT 
		tblUsers.tblUsers_ID,
        tblUsers.Name,
        tblUsers.UserImage,        
        -- SongsCount.NoOfSong,
        IF(SongsCount.NoOfSong IS NULL, 0, SongsCount.NoOfSong) As NoOfSong
    FROM
		tblUsers 
    LEFT JOIN
		(
			SELECT 
				ArtistId, 
                COUNT(ArtistId) AS NoOfSong				
			FROM 
				tblMedia 
			GROUP BY ArtistId
		) AS SongsCount 
	ON  tblUsers.tblUsers_ID = SongsCount.ArtistId   
    WHERE tblUsers.UserType = 3 AND tblUsers.Status = 1;
END