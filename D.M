namespace Pr1
{
    class programm
    {
        static void Main(String[] args)
        {
            string smt;
            do
            {
                Console.WriteLine("1. случайное число \n 3.вывод делителей числа \n 4.выход из программы");
                smt = Console.ReadLine();
                if (smt == "1")
                {
                    numb();
                }
                if (smt == "3")
                {
                    Delitel();
                }
            } while (smt != "4");
        }
        static void numb()
        {
            int A;
            Random rand = new Random();
            int chislo = rand.Next(0, 101);
            Console.WriteLine("Введите ваше число");
            do
            {
                A = Convert.ToInt32(Console.ReadLine());
                if (A < chislo)
                {
                    Console.WriteLine("ваше число меньше");
                }
                else if (A > chislo)
                {
                    Console.WriteLine("ваще число больше");
                }
            } while (A != chislo);
            Console.WriteLine("Поздравляю! Вы угадали число");
        }
        static void Delitel()
        {
            int numb1 = Convert.ToInt32(Console.ReadLine());
            for (int i = 1; i <= numb1; i++)
            {
                if (numb1 % i == 0)
                {
                    Console.WriteLine(i);
                }
            }
        }
    }
}

