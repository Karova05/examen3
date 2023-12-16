using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ENCUESTA_PARTIDOS_POLITICOS.clases
{
    public class part_politicos
    {
        public int id { get; set; }

        public string partido { get; set; }

        public part_politicos(string partido)
        {
            this.partido = partido;
        }


        public part_politicos()

        {
        
        }

    }
}