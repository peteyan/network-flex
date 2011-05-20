package com.hongguan.util.json 
{
    public class Page
    {
        private var currtPage:int = 1; // 当前页 
		private var total:int = 0; // 数据总条数 
		private var pagenum:int = 15; // 每页显示数量 
		private var pagecount:int = 0; // 总页数 
        public function firstPage():void{ 
			currtPage = 1; 
			getPageData(); 
		} 
		public function prevPage():void{ 
			currtPage = currtPage > 1 ? currtPage-1 : 1; 
			getPageData(); 
		} 
		public function nextPage():void{ 
			currtPage = currtPage+1 > pagecount ? pagecount : currtPage+1; 
			getPageData(); 
		} 
		public function lastPage():void{ 
			currtPage = pagecount; 
			getPageData(); 
		} 
		public function cbChange():void{ 
			//currtPage = cb.selectedItem.data+1; 
			getPageData(); 
		} 
		public function getPageData():void{ 
			//searchCustList();
		}
    }
}
