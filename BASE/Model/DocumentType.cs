using System.Collections.Generic;

namespace BASE.Model
{
  public class DocumentType : Entity
  {
    public DocumentType()
    {
      Descriptions = new Dictionary<string, Description>();
    }
  }
}
