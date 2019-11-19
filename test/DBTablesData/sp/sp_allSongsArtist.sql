CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_allSongsArtist`()
BEGIN
SELECT 
    (tblUsers.Name) AS artistName,
    tblMedia.tblMedia_Id,
    (tblMedia.Name) AS songName,
    tblMedia.ArtistId,
    tblMedia.Type,
    tblMedia.FilePath,
    tblMedia.ThumbnailPath
FROM
    tblMedia
        LEFT JOIN
    tblUsers ON tblUsers.tblUsers_ID = tblMedia.ArtistId;
END