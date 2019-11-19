CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_createArtist`(        
		p_Name varchar(100), 
		p_Email varchar(50),   
        p_UserType int(11),
        p_Status tinyint(1),  
		p_MobileNo int(50),        
        p_Description varchar(500)   
        )
BEGIN
	INSERT INTO 
		tblUsers (
		Name, 
		Email,   
        UserType,
        Status,  
		MobileNo,        
        Description 
        )
	VALUES (
		p_Name, 
		p_Email,   
        p_UserType,
        p_Status,  
		p_MobileNo,        
        p_Description  
        );
END