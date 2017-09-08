using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BASE.Model;

namespace ERP.Model
{
  public class Bank : Entity
  {
    public Bank()
    {
      BankAccounts = new List<BankAccount>();
    }

    public IList<BankAccount> BankAccounts { get; set; }
  }
}
