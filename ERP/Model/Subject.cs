using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ERP.Model
{
  public abstract class Subject
  {
    public int Id { get; set; }

    public string Denomination { get; set; }

    public TipoDeDocumento Document { get; set; }

    public bool Isinactive { get; set; }

    public string Observations { get; set; }

    public string DocumentCode { get; set; }

    public List<Addresses> Addresseses { get; set; }
  }
}
