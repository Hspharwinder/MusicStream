INSERT INTO `a572016d_ShyamMusicStreaming`.`tblUsers`
(`tblUsers_ID`,
`Name`,
`Password`,
`Email`,
`UserType`,
`UserImage`,
`Status`,
`MobileNo`,
`Description`,
`UserName`)
VALUES
(<{tblUsers_ID: }>,
<{Name: }>,
<{Password: }>,
<{Email: }>,
<{UserType: }>,
<{UserImage: }>,
<{Status: }>,
<{MobileNo: }>,
<{Description: }>,
<{UserName: }>);


UPDATE `a572016d_ShyamMusicStreaming`.`tblUsers`
SET
`tblUsers_ID` = <{tblUsers_ID: }>,
`Name` = <{Name: }>,
`Password` = <{Password: }>,
`Email` = <{Email: }>,
`UserType` = <{UserType: }>,
`UserImage` = <{UserImage: }>,
`Status` = <{Status: }>,
`MobileNo` = <{MobileNo: }>,
`Description` = <{Description: }>,
`UserName` = <{UserName: }>
WHERE `tblUsers_ID` = <{expr}>;

