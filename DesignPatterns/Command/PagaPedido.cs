﻿using System;
using System.Collections.Generic;
using System.Text;

namespace DesignPatterns.Command
{
    public class PagaPedido : ICommand
    {
        private Pedido pedido;

        public PagaPedido(Pedido pedido)
        {
            this.pedido = pedido;
        }

        public void Executa()
        {
            Console.WriteLine($"Pagando o pedido do cliente {pedido.Cliente}");
            pedido.Paga();
        }
    }
}
