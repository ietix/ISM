using System.Collections.Generic;

namespace BASE.Model
{
  public class Country : Entity
  {
    public Country()
    {
      Descriptions = new Dictionary<string, Description>();
      Provinces = new List<Province>();
    }

    public IList<Province> Provinces { get; set; }
  }
}
