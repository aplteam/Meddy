[parm]:toc            = 2 2
[parm]:collapsibleTOC = 1
[parm]:numberHeaders  = 0


Meddy Release Notes
===================

## 2.0.1
 * Bug fixes:
   * In case there is already a Markdown document opened, selecting "New presentation" from the "File" menu opened an empty new document rather than a new presentation.
   * In case a second document is opened the screen flickered (GUI gets created in the center first, then moved to the neighbourhood of the first window).
   * After a click onto a special character the cursor disapeared.
   * Problem with "Hide right pane". #10

## 2.0.0

| Note that this version might break existing markdown files of yours! |{style="color: red; font-size:larger;"}
|Check the first topic of the release notes!|

 * Meddy 2.0.0 comes with a new version of MarkAPL (5.0.0) which potentially **might break** your markdown files:

   The syntax for adding special attributes to images and links was inconsistent and got changed.

   * In general the special attributes (that's the stuff between `{}`) need to go _into_ the definition. For example, for an auto-link rather than having

     `<https://aplwiki.com>{style="color: red;"}`

     It is

     `<https://aplwiki.com {style="color: red;"}>`

     Similarly special attributes need to go betwen the `()` of image and link definitions.

     This is incompatibel with MarkdownExtra, the original inventor of the idea and syntax, but makes much more sense because you don't have to worry about escaping any `{}` charcters that are supposed to appear in the document.


 * More complex expressions like links or images can now be embedded via the context menu, giving you a template with the correct syntax.

 * A markdown document can be declared as being a pesentation by adding the parameter:
    
   `[parm]:presentation=1`

   The markdown is then expected to follow the rules set out by PresentAPL, and it is when saved converted into a stand-alone HTML page that can be used as a presentation in any modern browser. For details see <https://github.com/aplteam/PresentAPL>.

   Because a specific syntax is required for a presentation a template is put on display in case the user selects "New presentation" from the "File" menu.

 * The context menu now comes with standard "Cut", "Copy" and "Paste" commands.

 * For displaying the HTML pages listed in the "Help" menu a .NET call was used. This was changegd so that Meddy does not need the .NET-related DLLs anymore, and it does not need .NET itself either.

 * Bug fixes:

   * In case of "Save as..." Meddy did not check whether such a file already existed, and therefore did not ask whether the user wants to overwrite it or not.

   * The "Preferences" dialog could behave strangely on multi-monitor systems.

   * When the "Preferences" dialog was open, a click on the main form or Meddy's icon in the task bar did not bring the Preferences dialog to the front.

   * After a "Find" or a "Find & Replace" operation the TOC and markdown were not syncronized.

   * After an "Undo" or a "Redo" operation the TOC and markdown were not syncronized.

   * With large documents Meddy became sluggish when keys were pressed. 

   * Creating a new markdown file "(File > New") from an existing instance let to strange behaviour.

## 1.7.2
   * None of the documents in the "Help" menu was shown since 1.7.0 because some DLLs also
     needed to be updated to 17.0 as well.
   * The "Find" as well as the "Find & Replace" dialogs got improved.
   * The "Preferences" dialog got beautified.
   
## 1.7.1
   * Bug fix: 1.7.0 was build with Dyalog 16.0 but uses features supported only in 17.0. Mea culpa.

## 1.7.0
  * Meddy now checks for an (optional) INI files `specialchars.ini`. If it does exist
    it is honoured. See the `ReadMe.md` for details.
    
    The special characters defined in that INI file can then be accessed via the newly 
    introduced grid that is located right underneath the menubar.
    
    The "Find" and the "Find and Replace" dialogs got enhanced similarly.
    
    This is a neccessary measure against Dyalog's "Edit" control being oblivious towards 
    any Alt+{Num} key combination, meaning that one **cannot** enter any Unicode         
    characters via these key combinations.

    Once Dyalog starts supporting this we can get rid of this. However, for technical 
    reasons this is quite unlikely.
    
  * In case an older version of MarkAPL is found in C:\ProgramData\Meddy but ignored by the 
    user Meddy asks whether this older version shall be deleted.    
    
  * Bug fixes
    * Operating the second Splitter sometimes caused Meddy to crash.
    * The second splitter now behaves more appropriately.
    * `History` now just prints `]notepad <filename>` to the session.
    * A version of MarkAPL saved in C:\ProgramData\Meddy overwrote under some circumstances 
      a "better" version in the WS.

* 1.6.9
  * Just a new version of MarkAPL. No other changes.

* 1.6.8
  * New version of MarkAPL integrated.
  * Bug fixe: a new version of MarkAPL put into the dedicated folders made Meddy crash.    
  
* 1.6.7
  * Bug fixes:
    * On some machines (very rare) some Registry keys were reported as not defined              
      although they were.
      Meddy now takes default values in case the Registry fails to cooperate.
    * Context menu command "Save as" on the "HTML" tab did just the same as the "Save" command.
  * GUI improved: the splitters are now more prominent.    

* 1.6.6
  * Bug fixes:
    * Meddy crashed in case an invalid RegEx was entered.
    * Some sub dialogs were not children of the main form but should. (Find, Replace,...)

* 1.6.5 
  * Fixed bugs:
    * Selecting "HTML Export" from the "File" menu crashed Meddy. This was due to a missing CSS file.
    * Closing an empty unchanged new document sometimes led to the question whether it should be saved.

* 1.6.4
  * In case Meddy runs out of memory it attempts to cut down the undo stack but that crashed.
  * "ReleaseNotes.html" were not found when selected in the Help menu.

* 1.6.3
  * In case of a crash Meddy now attempts to save the Markdown along the crash files.
  * In case Meddy finds a file `.Meddy` as a sibling of the Markdown file it will now
    **always** save an HTML file.
  * Meddy now displays proper information in "Details" as well as the Task Manager when running.
  * Bug fix: in case of a crash the component file was  created but not written to the disk.

* 1.6.2
  * Under certain circumstances an attempt to save an HTML file crashed.

* 1.6.1
  * Bug fix for #3 rolled back. See issue #5 for an explanation.

## 1.6.0
  * LeanPub extension can now be set in the preferences dialog.
  * Bug fixes; see #3 and #4.

* 1.5.3
  * `leanpubExtensions` can now be set in the preferences.
  * Bug fixes: #3 and #4 fixed

* 1.5.2
  * Ill-defined headers could crash Meddy.
  * Invalid embedded parameters could crash Meddy.
  * License changed: is now an MIT license.
  * Sync (F6) could occasionally crash Meddy.

* 1.5.1
  * Menu restructured.
  * Bug fixes:
    * A new document crashed.
    * The "Export HTML" dialog did not work as intended.
    * Invalid embedded parameters could crash Meddy.
    * Status bar was not always reset.

## 1.5.0
* Undo/Redo improved at the expense of memory.
* "Export HTML" now gives three opportunities: "Save always", "Save never" and "Keep asking". Same
  for the Preferences dialog.
* When a file is opened all <tab> characters are replaced by 4 spaces.
* F11 (View in default browser) has been moved to F10.
* F11 is now "Toggle full-screen mode" which is standard in all browsers and many editors.
* F6 now syncs the Preview pane with the Markdown pane and the TOC, depending on the cursor position
  in the markdown.
* Cursor movements don't change the Preview any more: too slow and sometimes not appreciated.
* Size and Posn of the main form are now restored at the next start when possible.

* 1.4.2
  * The screen style sheets got improved.
  * Updating the TOC got smarter: expanded branches remain expanded after Ctrl+S as well as F5.
  * New version of MarkAPL.
  * New version of the GUI utilities.
  * Bug fixes
    * The TOC was _always_ updated, even if there was no change.
    * Invalid regular expressions could crash Meddy.
    * After disabling "Preview" and then making the form significantly smaller could result in
      the "Preview" becoming permanently invisible.
    * For a _local_ file the URL is supposed to start with "file:///" rather than "file://". This
      is important since some browsers are quite strict on this.
    * Pressing <escape> in the "Replace" form crashed Meddy.
    * KeyPress events were handled slowly due to a bug in the Undo/Redo code.

* 1.4.1
  * Bug fixes
    * After loading a file F5 lead to "There is no HTML file yet" even if there is one.
    * View in default browser did not work in case the filename carried one or more blanks.
    * CSS were not always found.
    * New version of MarkAPL with bug fixes.
    * The `[parm]` section had trailing blanks after invoking "Inject MarkAPL parameters".
    * The contents injected into a new document carried an invalid link (case problem),
    * A new document had a problems when the "Save" command was issued but then cancelled: it
      created a file `md.md` despite the cancellation.
    * In case `screenCSS` and `printCSS` where absolute paths and `cssURL` was not set at all
      things went wrong.
    * The TreeView (TOC) did not use an APL font yet a header might well carry APL chars.
    * Neither "Find" nor "Replace" used "APL385 Unicode" as font.

## 1.4.0
* New command "Go to line" in the "Edit" menu.
* New command "Show last report" in the "Edit" menu.
* Bug fixes
  * Embedded numeric parameters with more than one value (like `toc=2 3`) caused Meddy to fail.
  * Every reformatting of any embedded parameters added an additional blank column.
  * With LeanPub extensions active and embedded into the markdown a click on the TOC did not
    necessarily work as expected.
  * Embedded parameters got formatted, but not perfectly.

## 1.3.0
* New preference `LeanPub` introduced. If this is 1 (default is 0) then all the LeanPub extensions
  like `A> `, `I> `, `W> ` etc. are supported.
* New version of MarkAPL with important bug fixes.
* Bug fixes:
  * Drag-n-drop worked only once.
  * Files with invalid extension and no extension at all were silently ignored.

    Now those without are processed and those with invalid extensions present an error message now.
  * "View in default browser" always complained about a missing HTML file, no matter whether is was
    missing or not.
  * "Replace" without the RegEx option ticked always deleted the text that was to be replaced.

## 1.2.0
* "Replace" implemented.
* "Search" now offers "Ignore code blocks and/or inline code".
* New command line option `-folder` introduced. Use this to specify a folder Meddy should look
  into in case an "Open file" command is issued.
* Bug fixes
  * In case MarkAPL crashes when attempting to convert the Markdown to HTML the error is trapped
    now in order to avoid any loss of data.

* 1.1.2
  * Bug fixes:
    * Sync of Markdown with Preview and TOC stopped working.
    * Cursor keys did not work propery in the TOC.

* 1.1.1
  * Bug fixes:
    * The screen position of a new instance works now as expected.
    * KeyPress handler sped up.
    * Undo on the current paragraph was not re-doable.
    * Undo and Redo now get the cursor position right.

* 1.1.0
  * Meddy now honours a file `.Meddy` that lives in the folder a Markdown file was loaded from.
    This can be used to specify a different output folder for the HTML file, if any.

* 1.0.1
  * Version 1.0.0 did not open markdown files with a double-click in Windows Explorer.
  * "Close", "New" etc. are now supported.
  * Confirmation for saving HTML now defaults to "No".
  * "Width" for preview can now be defined in preferences.
  * Additional CSS files ("Classic" theme) added.
    * Bug fixes:
      * Undo did not always work as expected.
      * <Tab> key now inserts 4 blanks at the current cursor position.
      * Keys that do not actually produce a key deleted the character to the left of the cursor.

## 1.0.0
* "Open", "New"  and "RecenFiles" start a new instance of Meddy now.
* F2="Previous hit" implemented.
* The main GUI now allows to drag a single file onto the Markdown area as long as no document
  is opened/created.
* All documents on the "Help" menu are now opened with the default browser.
* "Posn" is now fixed but "Size" and Posn of any Splitters is remembered.
* New instances use a slightly changed Posn (does not work, see <01429>.
* Bug fixes:
  * "Full HTML document" was not process/honoured.
  * Statusbar background colour problem fixed.
  * "Save as" now looks into the folder the document came from.
  * Links to external URLs weren';t handled correctly.