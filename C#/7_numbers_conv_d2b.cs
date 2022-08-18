// convert decimal to binary

// dotnet new console -o <new_app> -f net6.0
// dotnet run
// dotnet build

using System;

class Program
{
    static void Main(string[] args)
    {
        int decNum = 0;
        int binNum = 0;

        string tempRem = "";

        //Console.Write("ex1: decimal --> binary");
        Console.Write("Enter decimal number: ");
        decNum = int.Parse(Console.ReadLine());

        while (decNum >= 1)
        {
            tempRem += (decNum % 2).ToString();
            decNum = decNum / 2;
        }

        for (int i = tempRem.Length -1; i >=0; i--)
        {
            binNum = binNum*10 + tempRem[i]-0x30;
        }

        Console.WriteLine("Timestamp: "+DateTime.Now);
        Console.WriteLine("Binary: "+binNum);
    }
}
