using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SklepFluent.Models
{
    public class Procesor
    {//IdProcesor, ProcesorNazwa, IloscRdzeni, IdProducent, Cena, Opis
        public virtual int IdProcesor { get; set; }
        public virtual string ProcesorNazwa { get; set; }
        public virtual int IloscRdzeni { get; set; }
        public virtual Producent IdProducent { get; set; }
        public virtual int Cena { get; set; }
        public virtual string Opis { get; set; }      
    }
}