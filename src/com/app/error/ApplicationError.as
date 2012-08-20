package com.app.error
{
	public class ApplicationError extends Error
	{
		public static const APP_NOT_READY:String = "The App Object is not yet initialized.";
		public static const INVALID_INPUT:String = "That is not a valid form of input for this application.";
		
		public function ApplicationError( message:* = "", id:* = 0 )
		{
			super(message, id);
		}
	}
}