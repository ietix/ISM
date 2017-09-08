using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BASE.Model
{
  public abstract class Entity
  {
    public int Id { get; set; }

    public string Name { get; set; }

    public IDictionary<string, Description> Descriptions { get; set; }
  }
}
