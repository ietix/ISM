using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ERP.Model
{
  public class Cities : Entity
  {
    public Dictionary<int, string> PostalCodes { get; set; }
  }
}
