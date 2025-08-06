using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace CollabPMSystem.Core.Models
{
    public class TaskItem
    {
        public int Id { get; set; }
        public string Title { get; set; } = string.Empty;
        public string Status { get; set; } = "Pending";
        public int  AssignedToUserId { get; set; }
        public int ProjectId { get; set; }
        public List<Comment> Comments { get; set; } = new();
    }
}
