namespace ERP.Model
{
  public class BankAccount
  {
    public int Id { get; set; }

    public Subject Owner { get; set; }

    public Bank Bank { get; set; }

    public string Cbu { get; set; }

    public string AccountNumber { get; set; }

    public string Alias { get; set; }
  }
}
