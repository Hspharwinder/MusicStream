CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_updateArtist`(  
		p_Name varchar(100), 
		p_Password varchar(100), 
		p_Email varchar(50),           
		p_MobileNo int(50),
		p_UserImage varchar(500),
        p_Description varchar(500),
        p_UserName varchar(50),        
        p_tblUsers_ID int(11),
		p_UserType int(11)		
)
BEGIN
	UPDATE 
		tblUsers 
	SET 
		Name = p_Name, 
		Password = p_Password,  
		Email      = p_Email,      
		MobileNo   = p_MobileNo,   
		UserImage = p_UserImage, 
		Description = p_Description,
		UserName  = p_UserName  
	WHERE 
		tblUsers_ID = p_tblUsers_ID AND UserType = p_UserType;
END