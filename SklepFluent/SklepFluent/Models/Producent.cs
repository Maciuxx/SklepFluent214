using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SklepFluent.Models
{
    public class Producent
    {
        //IdProducent, NazwaProducenta, Opis
        public virtual int IdProducent { get; set; }
        public virtual string NazwaProducenta { get; set; }
        public virtual string Opis { get; set; }
    }
}