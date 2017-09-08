using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BASE.Model
{
  public class User
  {
    public User()
    {
      Resources = new List<Resource>();
    }

    public int Id { get; set; }

    public string Name { get; set; }

    public string Password { get; set; }

    public bool HasADValidation { get; set; }

    public IList<Resource> Resources { get; set; }
  }
}
