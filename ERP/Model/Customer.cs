using System.Collections.Generic;

namespace ERP.Model
{
  public class Customer : Subject
  {
    public Customer()
    {
      Addresses = new List<Address>();
      Contacts = new List<Contact>();
    }
  }
}
