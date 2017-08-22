using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ERP.Model
{
  public class Contacts
  {
    public int Id { get; set; }

    public ContactType ContactType { get; set; }

    public string Information { get; set; }
  }
}
