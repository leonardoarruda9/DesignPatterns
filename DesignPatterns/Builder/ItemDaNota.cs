﻿using System;
using System.Collections.Generic;
using System.Text;

namespace DesignPatterns.Builder
{
    public class ItemDaNota
    {
        public string Nome { get; set; }
        public double Valor { get; set; }

        public ItemDaNota(string nome, double valor)
        {
            this.Nome = nome;
            this.Valor = valor;
        }

    }
}
