/* dova-io-0.1.vapi generated by valac 0.11.0.151-6fc7, do not modify. */

[CCode (cprefix = "Dova", lower_case_cprefix = "dova_")]
namespace Dova {
	[CCode (cheader_filename = "dova-io.h")]
	public class BufferedStream : Dova.Stream {
		public BufferedStream (Dova.Stream base_stream);
		public override void close ();
		public override int read (byte[] b, int offset = 0, int length = -1);
		public override int write (byte[] b, int offset = 0, int length = -1);
	}
	[CCode (cheader_filename = "dova-io.h")]
	public class DataReader : Dova.Object {
		public DataReader (Dova.Stream stream);
		public byte read_byte ();
		public int read_int32 ();
		public string read_string (int length);
		public uint read_uint32 ();
		public Dova.ByteOrder byte_order { get; set; }
	}
	[CCode (cheader_filename = "dova-io.h")]
	public class DataWriter : Dova.Object {
		public DataWriter (Dova.Stream stream);
		public void write_byte (byte b);
		public void write_int32 (int i);
		public void write_string (string s);
		public void write_uint32 (uint i);
		public Dova.ByteOrder byte_order { get; set; }
	}
	[CCode (cheader_filename = "dova-io.h")]
	public class MemoryStream : Dova.Stream {
		public MemoryStream (byte[] buffer, int offset, int length);
		public override void close ();
		public override int read (byte[] b, int offset = 0, int length = -1);
		public void seek (int offset);
		public override int write (byte[] b, int offset = 0, int length = -1);
	}
	[CCode (cheader_filename = "dova-io.h")]
	public abstract class Stream : Dova.Object {
		protected Stream ();
		public abstract void close ();
		public abstract int read (byte[] b, int offset = 0, int length = -1);
		public void read_all (byte[] b, int offset = 0, int length = -1);
		public abstract int write (byte[] b, int offset = 0, int length = -1);
		public void write_all (byte[] b, int offset = 0, int length = -1);
	}
	[CCode (cprefix = "DOVA_BYTE_ORDER_", cheader_filename = "dova-io.h")]
	public enum ByteOrder {
		HOST_ENDIAN,
		BIG_ENDIAN,
		LITTLE_ENDIAN
	}
}