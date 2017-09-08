using System.Collections.Generic;

namespace ERP.Model
{
  public class Company : Subject
  {
    public Company()
    {
      Addresses = new List<Address>();
      Contacts = new List<Contact>();
    }
  }
}
