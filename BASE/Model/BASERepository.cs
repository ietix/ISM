using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BASE.Model;

namespace ERP.Model
{
  

  public abstract class BASERepository
  {
    private IMS context = new IMS();

    public IMS Context { get { return context; } }
  }
}
