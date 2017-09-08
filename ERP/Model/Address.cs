using BASE.Model;

namespace ERP.Model
{
  public class Address
  {
    public int Id { get; set; }

    public string Description { get; set; }

    public Province Province { get; set; }

    public City City { get; set; }
  }
}
