using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ERP.Model
{
  public class Clients : Subject
  {
    public string InternalNumber { get; set; }

    public List<Contacts> Contacts { get; set; }
  }
}
