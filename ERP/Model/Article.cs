using BASE.Model;
using System.Collections.Generic;

namespace ERP.Model
{
  public class Article
  {
    public Article()
    {
      ShortDescriptions = new Dictionary<string, Description>();
      LongDescriptions = new Dictionary<string, Description>();
    }

    public int Id { get; set; }

    public IDictionary<string, Description> ShortDescriptions { get; set; }

    public IDictionary<string, Description> LongDescriptions { get; set; }

    public Brand Brand { get; set; }

    public string ImagePath { get; set; }

    public Uom Uoms { get; set; }
  }
}
