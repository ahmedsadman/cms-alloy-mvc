using System.ComponentModel.DataAnnotations;

namespace cms_alloy_mvc.Models;

public class LoginViewModel
{
    [Required]
    public string Username { get; set; }

    [Required]
    public string Password { get; set; }
}
