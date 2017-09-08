using System.Collections.Generic;

namespace BASE.Model
{
  public class City : Entity
  {
    public City()
    {
      Descriptions = new Dictionary<string, Description>();
      PostalCodes = new Dictionary<int, string>();
    }

    public IDictionary<int, string> PostalCodes { get; set; }
  }
}
