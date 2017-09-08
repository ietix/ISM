using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BASE.Model;

namespace ERP.Model
{
  

  public class ReceiptType
  {
    public int Id { get; set; }

    public string Name { get; set; }

    public List<Description> Descriptions { get; set; }
  }
}
