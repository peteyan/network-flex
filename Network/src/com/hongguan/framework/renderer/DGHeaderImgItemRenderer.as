package  com.hongguan.framework.renderer
{
	import com.hongguan.framework.util.SysIconUtil;
	
	import flash.display.DisplayObject;
	import flash.events.Event;
	import flash.filters.DropShadowFilter;
	import flash.text.TextField;
	
	import mx.collections.IList;
	import mx.containers.Box;
	import mx.containers.Canvas;
	import mx.containers.HBox;
	import mx.containers.VBox;
	import mx.controls.Alert;
	import mx.controls.DataGrid;
	import mx.controls.Image;
	import mx.controls.Label;
	import mx.controls.dataGridClasses.DataGridColumn;
	import mx.controls.listClasses.BaseListData;
	import mx.controls.listClasses.ListBase;
	import mx.core.UITextField;
	import mx.events.FlexEvent;
	
	import spark.primitives.BitmapImage;
	

	public class DGHeaderImgItemRenderer extends Box
	{

		public function DGHeaderImgItemRenderer()
		{
			super();			
			
			this.setStyle("paddingLeft",5);
			this.left = 0;
			this.right = 0;
			//this.verticalCenter = 0;

			this.verticalScrollPolicy = "off";
			this.horizontalScrollPolicy = "off";
			
			this.addEventListener(FlexEvent.CREATION_COMPLETE,createCompleteHandler,false,0,true);
		}

		protected function createCompleteHandler(event:Event):void
		{
			//horizontalCenter="0" text="标签" verticalCenter="0"
			
			var box:HBox = new HBox();
			box.horizontalCenter = 0;
			box.verticalCenter = 0;
			box.width = 100;

			var value:String = (super.data as DataGridColumn).headerText;
			
			box.addChild( this.createTitle(value));
			
			if(value == "金牌") box.addChildAt(this.createBitmapImage(SysIconUtil.metal),0);
			if(value == "银牌") box.addChildAt(this.createBitmapImage(SysIconUtil.silver),0);
			if(value == "铜牌") box.addChildAt(this.createBitmapImage(SysIconUtil.copper),0);
			
			this.addChild(box);
		}
		
		override public function set data(value:Object):void
		{
			super.data=value;
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth,unscaledHeight);
			
//			var hbox:HBox = this.getChildAt(0) as HBox;
//			Alert.show(hbox.width+"|"+hbox.left);
		}

		/***********************************************************************************************/
		/**create*/
		/***********************************************************************************************/
		
		private function createBitmapImage(source:Class):Image
		{
			var bi:Image = new Image();
			bi.source = source;
			
			return bi;
		}			
			
		private function createTitle(text:String,fontSize:int=12,center:Boolean = true):Label
		{
			var label:Label  = new Label();
			label.text = text;
			
			return label;
		}
	}
}