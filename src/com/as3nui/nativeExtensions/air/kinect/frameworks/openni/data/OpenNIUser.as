package com.as3nui.nativeExtensions.air.kinect.frameworks.openni.data
{
	import com.as3nui.nativeExtensions.air.kinect.data.SkeletonJoint;
	import com.as3nui.nativeExtensions.air.kinect.data.User;
	
	public class OpenNIUser extends User
	{
		
		public var rightFingers:Vector.<SkeletonJoint>;
		public var leftFingers:Vector.<SkeletonJoint>;
		
		public function OpenNIUser()
		{
			super();
		}
		
		override public function copyFrom(otherUser:User):void
		{
			super.copyFrom(otherUser);
			if(otherUser is OpenNIUser)
			{
				var otherOpenNIUser:OpenNIUser = otherUser as OpenNIUser;
				var i:uint = 0;
				updateRightFingerCount(otherOpenNIUser.rightFingers.length);
				for(i = 0; i < otherOpenNIUser.rightFingers.length; i++)
				{
					rightFingers[i].copyFrom(otherOpenNIUser.rightFingers[i]);
				}
				updateLeftFingerCount(otherOpenNIUser.leftFingers.length);
				for(i = 0; i < otherOpenNIUser.leftFingers.length; i++)
				{
					leftFingers[i].copyFrom(otherOpenNIUser.leftFingers[i]);
				}
			}
		}
		
		private function updateRightFingerCount(count:uint):void
		{
			rightFingers.length = count;
			for(var i:uint = 0; i < count; i++)
			{
				rightFingers[i] ||= new SkeletonJoint();
			}
		}
		
		private function updateLeftFingerCount(count:uint):void
		{
			leftFingers.length = count;
			for(var i:uint = 0; i < count; i++)
			{
				leftFingers[i] ||= new SkeletonJoint();
			}
		}
	}
}