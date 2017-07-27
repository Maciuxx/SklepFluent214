using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SklepFluent.Models
{
    public class Pamiec
    {
        //IdPamiec, NazwaPamiec, IdProducent, IdKategoria, IdSzybkoscPamieci, IdOpoznienia, Cena, Opis
        public virtual int IdPamiec { get; set; }
        public virtual string NazwaPamiec { get; set; }
        public virtual Producent IdProducent { get; set; }
        public virtual Kategoria IdKategoria { get; set; }
        public virtual SzybkoscPamieci IdSzybkoscPamieci { get; set; }
        public virtual OpoznieniaPamieci IdOpoznieniaPamieci { get; set; }
        public virtual string Cena { get; set; }
        public virtual string Opis { get; set; }
    }
}