using System.Collections.Generic;

namespace ERP.Model
{
  public class Supplier : Subject
  {
    public Supplier()
    {
      Addresses = new List<Address>();
      Contacts = new List<Contact>();
    }
  }
}
