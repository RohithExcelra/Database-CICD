/*
This Script will run everytime after the Build
*/
------------------------------------------------------------------------------------------------------------------------------

DECLARE @testcount INT = 1;

WHILE @testcount <= 100 
BEGIN
	INSERT INTO [dbo].[Test]
	SELECT ('Test Description'+ CAST(@testcount as [nchar](20)) )
	SET @testcount = @testcount +1 ;
END

------------------------------------------------------------------------------------------------------------------------------

DECLARE @mapcount INT = 1;

WHILE @mapcount <= 100 
BEGIN
	INSERT INTO [dbo].[Map]
	SELECT ('Map Description'+ CAST(@mapcount as [nchar](20)) )
	SET @mapcount = @mapcount +1 ;
END

------------------------------------------------------------------------------------------------------------------------------