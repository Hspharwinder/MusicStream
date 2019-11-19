CREATE DEFINER=`a572016d_ShyamMusicUser`@`122.180.87.192` PROCEDURE `sp_insertArtist`(        
		p_Name varchar(100), 
		p_Password varchar(100), 
		p_Email varchar(50),           
		p_MobileNo int(50),
		p_UserImage varchar(500),
        p_Description varchar(500),
        p_UserName varchar(50),    
		p_UserType int(11),
		p_Status tinyint(1)
        )
BEGIN
	INSERT INTO 
		tblUsers (
		Name, 
		Password, 
		Email,           
		MobileNo,
		UserImage,
        Description,
        UserName,    
		UserType,
		Status
        )
	VALUES (
		 p_Name, 
		 p_Password,  
		 p_Email,      
		 p_MobileNo,   
		 p_UserImage, 
		 p_Description,
		 p_UserName,
         p_UserType,
         p_Status
        );
END