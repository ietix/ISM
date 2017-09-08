using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BASE.Model
{
  public class Profile : Entity
  {
    public Profile()
    {
      Resources = new List<Resource>();
    }

    public IList<Resource> Resources { get; set; }
  }
}
