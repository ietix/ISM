using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ERP.Model
{
  public class Countries : Entity
  {
    public List<Provinces> Provinces { get; set; }
  }
}
