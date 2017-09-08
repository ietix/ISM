using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BASE.Model
{
  class CurrencyType
  {
    public CurrencyType()
    {
      Descriptions = new Dictionary<string, Description>();
    }

    public int Id { get; set; }

    public string FiscalCurrencyTypeId { get; set; }

    public IDictionary<string, Description> Descriptions { get; set; }

    public string Abreviation { get; set; }
  }
}
