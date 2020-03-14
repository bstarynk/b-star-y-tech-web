/*** file jscripts/b-star-y.js
 * JavaScript for http://b-star-y.tech/ website using JQuery
 *  Copyright © 2020 Basile Starynkevitch
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 ***/


// hilight the French text
function bsy_hilight_french() {
}				// end bsy_hilight_french

// hilight the English text
function bsy_hilight_english() {
}				// end bsy_hilight_english


/// the document on load function
function bsy_loaded_document(ev) {
    console.debug("bsy_loaded_document ev=%o", ev);
}				// end bsy_loaded_document

$(window).on( "load",  bsy_loaded_document);
// end of file jscripts/b-star-y.js
