using System.Collections.Generic;

namespace BASE.Model
{
  public class Concept : Entity
  {
    public Concept()
    {
      Descriptions = new Dictionary<string, Description>();
    }
  }
}
