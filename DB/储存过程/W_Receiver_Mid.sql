USE [Codematic]
GO
/****** 对象:  StoredProcedure [dbo].[W_Receiver_Mid]    脚本日期: 03/27/2010 09:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[W_Receiver_Mid] 
	-- Add the parameters for the stored procedure here
   
@MaterialId int	
AS
BEGIN
	

    -- Insert statements for procedure here
select W_Receiver.Id,W_Receiver.Receiver
from W_Receiver join W_Receivestate
on W_Receivestate.ReceiverId = W_Receiver.Id
where 
W_Receivestate.MaterialId=@MaterialId

END







