CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_retriveUserWithID`(p_tblUsers_ID int(11))
BEGIN
	SELECT * FROM tblUsers WHERE tblUsers_ID = p_tblUsers_ID;
END