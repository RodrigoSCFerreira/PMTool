using System;
using System.Collections.Generic;

namespace PMTool.Models
{
    public partial class Role
    {
        public int RoleId { get; set; }
        public string RolePrivilegies { get; set; }

        public Person RoleNavigation { get; set; }
    }
}
