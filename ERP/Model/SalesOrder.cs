using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ERP.Model
{
  public class SalesOrder
  {
    public int Id { get; set; }

    public string ClientInternalCode { get; set; }

    public DateTime ReleaseDate { get; set; }

    public Customer Customer { get; set; }

    public SalesOrderState Status { get; set; }

    public string Observations { get; set; }

    public Contract Contract { get; set; }
  }
}
