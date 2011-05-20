/**
 * @Project Newwork
 * @Title IconUtil.as
 * @Package com.hongguan.util
 * @Description TODO
 * @date 2011-5-12 上午01:48:01
 * @version V1.0  
 */
package com.hongguan.util
{
	
	/** 
	 * @Description TODO
	 * @author： HUBO hubo.0508ⓐgmail.com    /  date：2011-5-12
	 */
	public class IconUtil
	{
		public function IconUtil()
		{
		}
		
		[Bindable]
		[Embed('assets/image/areaMap.png')]
		public static var areaMap:Class;
		
		[Bindable]
		[Embed('assets/image/wireless.png')]
		public static var wireless:Class;
		
		[Bindable]
		[Embed('assets/image/core.png')]
		public static var core:Class;

	}
}