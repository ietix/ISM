using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BASE.Model;

namespace ERP.Model
{
  public class Contract
  {
    public int Id { get; set; }

    public Customer Customer { get; set; }

    public DateTime StartTime { get; set; }

    public DateTime EndTime { get; set; }

    public IDictionary<string, Description> Descriptions { get; set; }

    public IList<SalesOrder> SalesOrders { get; set; }

    public string CustomerBuyerName { get; set; }
  }
}
