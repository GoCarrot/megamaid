/* Teak -- Copyright (C) 2017 GoCarrot Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package io.teak.megamaid
{
	import flash.external.ExtensionContext;

	public class Megamaid
	{
		public function Megamaid()
		{
			if(_instance) throw new Error("Use 'Megamaid.instance' instead of instantiating a new Megamaid object.");

			_context = ExtensionContext.createExtensionContext(EXTENSION_ID, null);
			if(!_context) throw new Error("ERROR - Extension context is null. Please check if extension.xml is setup correctly.");
			_instance = this;
		}

		public static function get instance():Megamaid
		{
			return _instance ? _instance : new Megamaid();
		}

		private static var _instance:Megamaid;
		private static const EXTENSION_ID:String = "io.teak.megamaid.Megamaid";

		private var _context:ExtensionContext;
	}
}
