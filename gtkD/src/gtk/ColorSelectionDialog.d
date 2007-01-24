/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkColorSelectionDialog.html
 * outPack = gtk
 * outFile = ColorSelectionDialog
 * strct   = GtkColorSelectionDialog
 * realStrct=
 * ctorStrct=
 * clss    = ColorSelectionDialog
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_color_selection_dialog_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * local aliases:
 */

module gtk.ColorSelectionDialog;

private import gtk.gtktypes;

private import lib.gtk;

private import glib.Str;

/**
 * Description
 * The GtkColorSelectionDialog provides a standard dialog which
 * allows the user to select a color much like the GtkFileSelection
 * provides a standard dialog for file selection.
 */
private import gtk.Dialog;
public class ColorSelectionDialog : Dialog
{
	
	/** the main Gtk struct */
	protected GtkColorSelectionDialog* gtkColorSelectionDialog;
	
	
	public GtkColorSelectionDialog* getColorSelectionDialogStruct()
	{
		return gtkColorSelectionDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkColorSelectionDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkColorSelectionDialog* gtkColorSelectionDialog)
	{
		super(cast(GtkDialog*)gtkColorSelectionDialog);
		this.gtkColorSelectionDialog = gtkColorSelectionDialog;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkColorSelectionDialog.
	 * title:
	 * a string containing the title text for the dialog.
	 * Returns:
	 * a GtkColorSelectionDialog.
	 */
	public this (char[] title)
	{
		// GtkWidget* gtk_color_selection_dialog_new (const gchar *title);
		this(cast(GtkColorSelectionDialog*)gtk_color_selection_dialog_new(Str.toStringz(title)) );
	}
}