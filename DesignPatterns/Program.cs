﻿using DesignPatterns.Adapter;
using DesignPatterns.Command;
using DesignPatterns.Facades;
using DesignPatterns.Mediator.Exemplo1;
using DesignPatterns.Mediator.Exemplo2;
using System;

namespace DesignPatterns
{
    class Program
    {
        static void Main(string[] args)
        {
            IDesignPatterns designExemplo = new DesignPatternsCommand();
            designExemplo.MainExemplo();


            Console.ReadKey();

        }
    }
}
