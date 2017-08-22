using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ERP.Model
{
  public abstract class ERPRepository
  {
    private IMS context = new IMS();

    public IMS Context { get { return context; } }
  }
}
