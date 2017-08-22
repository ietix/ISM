using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ERP.Model
{
  public class Provinces : Entity
  {
    public List<Cities> Cities { get; set; }
  }
}
