[parm]:title='Meddy Release Notes'
[parm]:saveHTML=0


# Release Notes

## 2.11.2 - 2020-08-29

* When copying text from Notepad++ a nested vector is saved in the clipboard. The first item contains all the text (`⎕UCS 13` separated), the second one is empty. This is now converted automatically into something useful.

  Something similar happens when text from Google Mail is copied, but because when Meddy gets to see the text it's not able to restore fully what was copied. The reason is that every two `⎕UCS 10`s got already converted into a single one, and there is nothing we can do about this. No idea how Microsoft Word handles this, but they do.

## 2.11.1 - 2020-08-24

* When a document that was saved with a TOC was changed so that there were no headers anynmore and then saved under a different name, Meddy crashed.

* When Meddy was asked to close down but there were unsaved changes waiting, and the attempt to save them failed with error 19, then Meddy informed the user about the error but closed down anyway, effectively discarding the changes.

## 2.11.0 - 2020-08-19

* The "Search > Find next (F3)" menu command is back.
* Renaming a markdown file did not rename the associated HTML file except when it was moved to a different directory.
* "Show warnings" is not a preference anymore but a document-specific option that after opening always defaults to "true".

  If it is switched off via the menu command "Settings > Show warnings" then the message "There are warnings" is shown in the status bar.
* Bug fixes
  * <Escape> and <Enter> (triggering the default button) did not work in dialogs in 2.10.3.
      
    This was a Dyalog issue, not a Meddy issue, but it is solved now with the new version of Dyalog 18.0
  * A header that resulted in containing tags was shown with the tags in the TOC. Now removed.
* Under the hood Meddy now uses 18.0.

## 2.10.3 - 2020-07-15
  
* Bug fix: under some circumstances a click on the special characters could crash Meddy.

## 2.10.2 - 2020-06-03

* Toc was not always updated properly (#44).
* Clicking on a title in the Preview does not work (#43).
* TOC and Markdown can get out of sync (#42).

## 2.10.1 - 2020-05-26

* "New", when selected while a document is currently open, crashed Meddy.

## 2.10.0 - 2020-05-24

* "Find" improved (#36).
* The markdown context menu now offers a command "Copy ID" (#25).
* The "View" menu and the markdown context menu now offer a command "Sync".
* Handling of the TOC improved including some changes to the context menu.
* Files are tied exclusively for the course of the session, preventing accidental double-editing
* Bug fixes:
  * #22, #24, #27, #41, #40, #39, #34, #30, #32, #16, #29 fixed.