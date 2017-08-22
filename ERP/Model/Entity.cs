using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ERP.Model
{
  public abstract class Entity
  {
    public int Id { get; set; }

    public string Name { get; set; }

    public Dictionary<string, Descriptions> Descriptions { get; set; }
  }
}
