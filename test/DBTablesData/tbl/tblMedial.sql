INSERT INTO `a572016d_ShyamMusicStreaming`.`tblMedia`
(`tblMedia_Id`,
`Name`,
`ArtistId`,
`Type`,
`FilePath`,
`ThumbnailPath`)
VALUES
(<{tblMedia_Id: }>,
<{Name: }>,
<{ArtistId: }>,
<{Type: }>,
<{FilePath: }>,
<{ThumbnailPath: }>);


UPDATE `a572016d_ShyamMusicStreaming`.`tblMedia`
SET
`tblMedia_Id` = <{tblMedia_Id: }>,
`Name` = <{Name: }>,
`ArtistId` = <{ArtistId: }>,
`Type` = <{Type: }>,
`FilePath` = <{FilePath: }>,
`ThumbnailPath` = <{ThumbnailPath: }>
WHERE `tblMedia_Id` = <{expr}>;

