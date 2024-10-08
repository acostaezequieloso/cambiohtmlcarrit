using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class Log_Auditoria
    {
        public int Id_Auditoria { get; set;}
        public Usuario oUsuario { get; set; }
        public Venta oVenta { get; set; }
        public Cliente oCliente { get; set; }
        public DateTime Fecha_Venta { get; set; }
    }
}
