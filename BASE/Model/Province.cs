using System.Collections.Generic;

namespace BASE.Model
{
  public class Province : Entity
  {
    public Province()
    {
      Descriptions = new Dictionary<string, Description>();
      Cities = new List<City>();
    }

    public IList<City> Cities { get; set; }
  }
}
