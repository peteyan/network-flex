/**
 * @Project Newwork
 * @Title ClickNavigatorTopMenuEvent.as
 * @Package com.hongguan.framework.event
 * @Description TODO
 * @date 2011-5-12 上午01:16:05
 * @version V1.0 
 */
package com.hongguan.framework.event
{
	import flash.events.Event;


	/**
	 * @Description TODO
	 * @author： HUBO hubo.0508ⓐgmail.com    /  date：2011-5-12
	 */
	public class ClickNavigatorTopMenuEvent extends Event
	{

		public static const CLICK_MENU:String="clickNavMenu";

		private var _menuType:String;

		public function ClickNavigatorTopMenuEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}

		public function get menuType():String
		{
			return _menuType;
		}

		public function set menuType(value:String):void
		{
			_menuType=value;
		}

	}
}