package data
{
	import flash.events.EventDispatcher;
	
	import mx.collections.ArrayCollection;

	public class Item extends EventDispatcher
	{
		public function Item(label:String)
		{
			this.label = label;
		}
		
		private var label:String;
		
		public var children:ArrayCollection;
		
		public function add(item:Item):void
		{
			if(!children){
				children = new ArrayCollection();
			}
			children.addItem(item);
		}
		
		public function remove(item:Item):void
		{
			var index:int = children.getItemIndex(item);
			if(index >= 0){
				children.removeItemAt(index);
			}
			
		}
		
		override public function toString():String
		{
			return label;
		}
		
		
		
	}
}