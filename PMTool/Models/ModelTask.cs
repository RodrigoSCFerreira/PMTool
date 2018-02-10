using System;
using System.Collections.Generic;

namespace PMTool.Models
{
    public partial class ModelTask
    {
        public ModelTask()
        {
            ModelProjectTask = new HashSet<ModelProjectTask>();
        }

        public int ModelTaskId { get; set; }
        public int ModelProjectId { get; set; }

        public ICollection<ModelProjectTask> ModelProjectTask { get; set; }
    }
}
