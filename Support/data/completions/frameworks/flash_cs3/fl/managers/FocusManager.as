﻿package fl.managers
{
import flash.display.Sprite;
import flash.display.MovieClip;
import flash.display.Stage;
import flash.display.SimpleButton;
import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;
import flash.display.InteractiveObject;
import flash.text.TextField;
import flash.text.TextFieldType;
import flash.ui.Keyboard;
import flash.events.Event;
import flash.events.FocusEvent;
import flash.events.MouseEvent;
import flash.events.KeyboardEvent;
import fl.controls.Button;
import fl.controls.TextInput;
import fl.core.UIComponent;
import flash.system.Capabilities;
import flash.utils.*;
public class FocusManager implements IFocusManager
{
		private var _form : DisplayObjectContainer;
		private var focusableObjects : Dictionary;
		private var focusableCandidates : Array;
		private var activated : Boolean;
		private var calculateCandidates : Boolean;
		private var lastFocus : InteractiveObject;
		private var _showFocusIndicator : Boolean;
		private var lastAction : String;
		private var defButton : Button;
		private var _defaultButton : Button;
		private var _defaultButtonEnabled : Boolean;
		public function get defaultButton () : Button;
		public function set defaultButton (value:Button) : Void;
		public function get defaultButtonEnabled () : Boolean;
		public function set defaultButtonEnabled (value:Boolean) : Void;
		public function get nextTabIndex () : int;
		public function get showFocusIndicator () : Boolean;
		public function set showFocusIndicator (value:Boolean) : Void;
		public function get form () : DisplayObjectContainer;
		public function set form (value:DisplayObjectContainer) : Void;
		public function FocusManager (container:DisplayObjectContainer);
		private function addedHandler (event:Event) : void;
		private function removedHandler (event:Event) : void;
		private function addFocusables (o:DisplayObject, skipTopLevel:Boolean = false) : void;
		private function removeFocusables (o:DisplayObject) : void;
		private function isTabVisible (o:DisplayObject) : Boolean;
		private function isValidFocusCandidate (o:DisplayObject, groupName:String) : Boolean;
		private function isEnabledAndVisible (o:DisplayObject) : Boolean;
		private function tabEnabledChangeHandler (event:Event) : void;
		private function tabIndexChangeHandler (event:Event) : void;
		private function tabChildrenChangeHandler (event:Event) : void;
		public function activate () : void;
		public function deactivate () : void;
		private function focusInHandler (event:FocusEvent) : void;
		private function focusOutHandler (event:FocusEvent) : void;
		private function activateHandler (event:Event) : void;
		private function deactivateHandler (event:Event) : void;
		private function mouseFocusChangeHandler (event:FocusEvent) : void;
		private function keyFocusChangeHandler (event:FocusEvent) : void;
		private function keyDownHandler (event:KeyboardEvent) : void;
		private function mouseDownHandler (event:MouseEvent) : void;
		public function sendDefaultButtonEvent () : void;
		private function setFocusToNextObject (event:FocusEvent) : void;
		private function hasFocusableObjects () : Boolean;
		public function getNextFocusManagerComponent (backward:Boolean = false) : InteractiveObject;
		private function getIndexOfFocusedObject (o:DisplayObject) : int;
		private function getIndexOfNextObject (i:int, shiftKey:Boolean, bSearchAll:Boolean, groupName:String) : int;
		private function sortFocusableObjects () : void;
		private function sortFocusableObjectsTabIndex () : void;
		private function sortByDepth (aa:InteractiveObject, bb:InteractiveObject) : Number;
		private function getChildIndex (parent:DisplayObjectContainer, child:DisplayObject) : int;
		private function sortByTabIndex (a:InteractiveObject, b:InteractiveObject) : int;
		public function getFocus () : InteractiveObject;
		public function setFocus (component:InteractiveObject) : void;
		public function showFocus () : void;
		public function hideFocus () : void;
		public function findFocusManagerComponent (component:InteractiveObject) : InteractiveObject;
		private function getTopLevelFocusTarget (o:InteractiveObject) : InteractiveObject;
}
}
