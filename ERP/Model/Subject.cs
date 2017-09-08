using System.Collections.Generic;

namespace ERP.Model
{
  public abstract class Subject
  {
    public int Id { get; set; }

    public string Denomination { get; set; }

    public ReceiptType Document { get; set; }

    public bool Isinactive { get; set; }

    public string InternalNumber { get; set; }

    public string Observations { get; set; }

    public string DocumentCode { get; set; }

    public IList<Address> Addresses { get; set; }

    public IList<Contact> Contacts { get; set; }
  }
}
