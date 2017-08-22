using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ERP.Model
{
  public class TipoDeDocumento
  {
    public int Id { get; set; }

    public string Name { get; set; }

    public List<Descriptions> Descriptions { get; set; }
  }
}
