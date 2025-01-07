package
{
   import Shared.GlobalFunc;
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol249")]
   public class ItemCard_ItemHealthEntry extends ItemCard_Entry
   {
       
      
      public var ConditionMeter_mc:MovieClip;
      
      private var m_ConditionLengthFrames:int = 100;
      
      private var m_ConditionFrames:int = 110;
      
      public function ItemCard_ItemHealthEntry()
      {
         super();
      }
      
      public static function IsEntryValid(param1:Object) : Boolean
      {
         return param1.currentHealth != -1;
      }
      
      override public function PopulateEntry(param1:Object) : *
      {
         if(zel_ShowDurability)
         {
            PopulateText(Label_tf.text + " [" + param1.durability + "] " + (param1.maximumHealth > 0 ? int(100 * param1.currentHealth / param1.maximumHealth) : "-"));
         }
         GlobalFunc.updateConditionMeter(this.ConditionMeter_mc,param1.currentHealth,param1.maximumHealth,param1.durability);
      }
   }
}
