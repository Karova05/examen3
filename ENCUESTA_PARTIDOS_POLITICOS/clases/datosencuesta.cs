using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ENCUESTA_PARTIDOS_POLITICOS.clases
{
    public class datosencuesta
    {
        public string nombre { get; set; }

        public int edad { get; set; }

        public string correoeelectronico { get; set; }

        public string partido { get; set; }

        public datosencuesta(string nombre, int edad, string correoeelectronico, string partido)
        {
            this.nombre = nombre;
            this.edad = edad;
            this.correoeelectronico = correoeelectronico;
            this.partido = partido;
        }

        public datosencuesta()

        { 
        
        }

        public void AgregarEncuesta() { }

        public void ReporteEncuestas() { }


    }
}