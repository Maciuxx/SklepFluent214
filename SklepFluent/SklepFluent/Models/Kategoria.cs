using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SklepFluent.Models
{
    public class Kategoria
    {
        public virtual int IdKategoria { get; set; }
        public virtual string KategoriaNazwa { get; set; }
    }
}