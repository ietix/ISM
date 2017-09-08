using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BASE.Model
{
  public class Uom : Entity
  {
    public Uom()
    {
      UomEquivalencies = new Dictionary<Uom, double>();
    }

    public string ShortName { get; set; }

    public IDictionary<Uom, double> UomEquivalencies { get; set; }
  }
}
