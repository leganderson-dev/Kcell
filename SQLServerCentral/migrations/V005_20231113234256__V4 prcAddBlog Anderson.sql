SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Altering [dbo].[prcAddBlog]'
GO
ALTER PROCEDURE [dbo].[prcAddBlog]
    @Author VARCHAR(30),
    @Title VARCHAR(142) = NULL,
    @Article VARCHAR(MAX) = NULL
    WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON
    INSERT  INTO dbo.Blogs (AuthorID, Title, Article, PublishDate)
    VALUES  (@Author, @Title, @Article, GETDATE())
        
        
END;
--V4
GO

﻿SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

