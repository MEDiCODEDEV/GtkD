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
 * inFile  = glib-Strings.html
 * outPack = glib
 * outFile = StringG
 * strct   = GString
 * realStrct=
 * ctorStrct=
 * clss    = StringG
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_string_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- GString* -> StringG
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.StringG;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;




/**
 * Description
 * A GString is similar to a standard C string, except that it grows
 * automatically as text is appended or inserted. Also, it stores the
 * length of the string, so can be used for binary data with embedded
 * nul bytes.
 */
public class StringG
{
	
	/** the main Gtk struct */
	protected GString* gString;
	
	
	public GString* getStringGStruct()
	{
		return gString;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gString;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GString* gString)
	{
		if(gString is null)
		{
			this = null;
			return;
		}
		this.gString = gString;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GString, initialized with the given string.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string init)
	{
		// GString* g_string_new (const gchar *init);
		auto p = g_string_new(Str.toStringz(init));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_string_new(Str.toStringz(init))");
		}
		this(cast(GString*) p);
	}
	
	/**
	 * Creates a new GString with len bytes of the init buffer.
	 * Because a length is provided, init need not be nul-terminated,
	 * and can contain embedded nul bytes.
	 * Since this function does not stop at nul bytes, it is the caller's
	 * responsibility to ensure that init has at least len addressable
	 * bytes.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string init, int len)
	{
		// GString* g_string_new_len (const gchar *init,  gssize len);
		auto p = g_string_new_len(Str.toStringz(init), len);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_string_new_len(Str.toStringz(init), len)");
		}
		this(cast(GString*) p);
	}
	
	/**
	 * Creates a new GString, with enough space for dfl_size
	 * bytes. This is useful if you are going to add a lot of
	 * text to the string and don't want it to be reallocated
	 * too often.
	 */
	public static StringG sizedNew(uint dflSize)
	{
		// GString* g_string_sized_new (gsize dfl_size);
		auto p = g_string_sized_new(dflSize);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Copies the bytes from a string into a GString,
	 * destroying any previous contents. It is rather like
	 * the standard strcpy() function, except that you do not
	 * have to worry about having enough space to copy the string.
	 * Params:
	 * string  =  the destination GString. Its current contents
	 *  are destroyed.
	 */
	public StringG assign(string rval)
	{
		// GString* g_string_assign (GString *string,  const gchar *rval);
		auto p = g_string_assign(gString, Str.toStringz(rval));
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Writes a formatted string into a GString.
	 * This function is similar to g_string_printf() except that
	 * the arguments to the format string are passed as a va_list.
	 * Since 2.14
	 * Params:
	 * string  =  a GString
	 */
	public void vprintf(string format, void* args)
	{
		// void g_string_vprintf (GString *string,  const gchar *format,  va_list args);
		g_string_vprintf(gString, Str.toStringz(format), args);
	}
	
	/**
	 * Appends a formatted string onto the end of a GString.
	 * This function is similar to g_string_append_printf()
	 * except that the arguments to the format string are passed
	 * as a va_list.
	 * Since 2.14
	 * Params:
	 * string  =  a GString
	 */
	public void appendVprintf(string format, void* args)
	{
		// void g_string_append_vprintf (GString *string,  const gchar *format,  va_list args);
		g_string_append_vprintf(gString, Str.toStringz(format), args);
	}
	
	/**
	 * Adds a string onto the end of a GString, expanding
	 * it if necessary.
	 * Params:
	 * string  =  a GString
	 */
	public StringG append(string val)
	{
		// GString* g_string_append (GString *string,  const gchar *val);
		auto p = g_string_append(gString, Str.toStringz(val));
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Adds a byte onto the end of a GString, expanding
	 * it if necessary.
	 * Params:
	 * c  =  the byte to append onto the end of string
	 */
	public StringG appendC(char c)
	{
		// GString* g_string_append_c (GString *string,  gchar c);
		auto p = g_string_append_c(gString, c);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Converts a Unicode character into UTF-8, and appends it
	 * to the string.
	 */
	public StringG appendUnichar(gunichar wc)
	{
		// GString* g_string_append_unichar (GString *string,  gunichar wc);
		auto p = g_string_append_unichar(gString, wc);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Appends len bytes of val to string. Because len is
	 * provided, val may contain embedded nuls and need not
	 * be nul-terminated.
	 * Since this function does not stop at nul bytes, it is
	 * the caller's responsibility to ensure that val has at
	 * least len addressable bytes.
	 * Params:
	 * string  =  a GString
	 */
	public StringG appendLen(string val, int len)
	{
		// GString* g_string_append_len (GString *string,  const gchar *val,  gssize len);
		auto p = g_string_append_len(gString, Str.toStringz(val), len);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Appends unescaped to string, escaped any characters that
	 * are reserved in URIs using URI-style escape sequences.
	 * Since 2.16
	 * Params:
	 * string  =  a GString
	 */
	public StringG appendUriEscaped(string unescaped, string reservedCharsAllowed, int allowUtf8)
	{
		// GString * g_string_append_uri_escaped (GString *string,  const char *unescaped,  const char *reserved_chars_allowed,  gboolean allow_utf8);
		auto p = g_string_append_uri_escaped(gString, Str.toStringz(unescaped), Str.toStringz(reservedCharsAllowed), allowUtf8);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Adds a string on to the start of a GString,
	 * expanding it if necessary.
	 * Params:
	 * string  =  a GString
	 */
	public StringG prepend(string val)
	{
		// GString* g_string_prepend (GString *string,  const gchar *val);
		auto p = g_string_prepend(gString, Str.toStringz(val));
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Adds a byte onto the start of a GString,
	 * expanding it if necessary.
	 * Params:
	 * c  =  the byte to prepend on the start of the GString
	 */
	public StringG prependC(char c)
	{
		// GString* g_string_prepend_c (GString *string,  gchar c);
		auto p = g_string_prepend_c(gString, c);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Converts a Unicode character into UTF-8, and prepends it
	 * to the string.
	 */
	public StringG prependUnichar(gunichar wc)
	{
		// GString* g_string_prepend_unichar (GString *string,  gunichar wc);
		auto p = g_string_prepend_unichar(gString, wc);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Prepends len bytes of val to string.
	 * Because len is provided, val may contain
	 * embedded nuls and need not be nul-terminated.
	 * Since this function does not stop at nul bytes,
	 * it is the caller's responsibility to ensure that
	 * val has at least len addressable bytes.
	 * Params:
	 * string  =  a GString
	 */
	public StringG prependLen(string val, int len)
	{
		// GString* g_string_prepend_len (GString *string,  const gchar *val,  gssize len);
		auto p = g_string_prepend_len(gString, Str.toStringz(val), len);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Inserts a copy of a string into a GString,
	 * expanding it if necessary.
	 * Params:
	 * string  =  a GString
	 */
	public StringG insert(int pos, string val)
	{
		// GString* g_string_insert (GString *string,  gssize pos,  const gchar *val);
		auto p = g_string_insert(gString, pos, Str.toStringz(val));
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Inserts a byte into a GString, expanding it if necessary.
	 * Params:
	 * c  =  the byte to insert
	 */
	public StringG insertC(int pos, char c)
	{
		// GString* g_string_insert_c (GString *string,  gssize pos,  gchar c);
		auto p = g_string_insert_c(gString, pos, c);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Converts a Unicode character into UTF-8, and insert it
	 * into the string at the given position.
	 */
	public StringG insertUnichar(int pos, gunichar wc)
	{
		// GString* g_string_insert_unichar (GString *string,  gssize pos,  gunichar wc);
		auto p = g_string_insert_unichar(gString, pos, wc);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Inserts len bytes of val into string at pos.
	 * Because len is provided, val may contain embedded
	 * nuls and need not be nul-terminated. If pos is -1,
	 * bytes are inserted at the end of the string.
	 * Since this function does not stop at nul bytes, it is
	 * the caller's responsibility to ensure that val has at
	 * least len addressable bytes.
	 * Params:
	 * string  =  a GString
	 */
	public StringG insertLen(int pos, string val, int len)
	{
		// GString* g_string_insert_len (GString *string,  gssize pos,  const gchar *val,  gssize len);
		auto p = g_string_insert_len(gString, pos, Str.toStringz(val), len);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Overwrites part of a string, lengthening it if necessary.
	 * Since 2.14
	 * Params:
	 * string  =  a GString
	 */
	public StringG overwrite(uint pos, string val)
	{
		// GString* g_string_overwrite (GString *string,  gsize pos,  const gchar *val);
		auto p = g_string_overwrite(gString, pos, Str.toStringz(val));
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Overwrites part of a string, lengthening it if necessary.
	 * This function will work with embedded nuls.
	 * Since 2.14
	 * Params:
	 * string  =  a GString
	 */
	public StringG overwriteLen(uint pos, string val, int len)
	{
		// GString* g_string_overwrite_len (GString *string,  gsize pos,  const gchar *val,  gssize len);
		auto p = g_string_overwrite_len(gString, pos, Str.toStringz(val), len);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Removes len bytes from a GString, starting at position pos.
	 * The rest of the GString is shifted down to fill the gap.
	 */
	public StringG erase(int pos, int len)
	{
		// GString* g_string_erase (GString *string,  gssize pos,  gssize len);
		auto p = g_string_erase(gString, pos, len);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Cuts off the end of the GString, leaving the first len bytes.
	 */
	public StringG truncate(uint len)
	{
		// GString* g_string_truncate (GString *string,  gsize len);
		auto p = g_string_truncate(gString, len);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Sets the length of a GString. If the length is less than
	 * the current length, the string will be truncated. If the
	 * length is greater than the current length, the contents
	 * of the newly added area are undefined. (However, as
	 * always, string->str[string->len] will be a nul byte.)
	 */
	public StringG setSize(uint len)
	{
		// GString* g_string_set_size (GString *string,  gsize len);
		auto p = g_string_set_size(gString, len);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Frees the memory allocated for the GString.
	 * If free_segment is TRUE it also frees the character data.
	 * Params:
	 * string  =  a GString
	 */
	public string free(int freeSegment)
	{
		// gchar* g_string_free (GString *string,  gboolean free_segment);
		return Str.toString(g_string_free(gString, freeSegment));
	}
	
	/**
	 * Warning
	 * g_string_up has been deprecated since version 2.2 and should not be used in newly-written code. This function uses the locale-specific
	 *  toupper() function, which is almost never the right thing.
	 *  Use g_string_ascii_up() or g_utf8_strup() instead.
	 * Converts a GString to uppercase.
	 */
	public StringG up()
	{
		// GString* g_string_up (GString *string);
		auto p = g_string_up(gString);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Warning
	 * g_string_down has been deprecated since version 2.2 and should not be used in newly-written code. This function uses the locale-specific
	 *  tolower() function, which is almost never the right thing.
	 *  Use g_string_ascii_down() or g_utf8_strdown() instead.
	 * Converts a GString to lowercase.
	 */
	public StringG down()
	{
		// GString* g_string_down (GString *string);
		auto p = g_string_down(gString);
		if(p is null)
		{
			return null;
		}
		return new StringG(cast(GString*) p);
	}
	
	/**
	 * Creates a hash code for str; for use with GHashTable.
	 */
	public uint hash()
	{
		// guint g_string_hash (const GString *str);
		return g_string_hash(gString);
	}
	
	/**
	 * Compares two strings for equality, returning TRUE if they are equal.
	 * For use with GHashTable.
	 */
	public int equal(StringG v2)
	{
		// gboolean g_string_equal (const GString *v,  const GString *v2);
		return g_string_equal(gString, (v2 is null) ? null : v2.getStringGStruct());
	}
}
