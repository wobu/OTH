namespace ex2.ram
{
    using System;
    using System.Linq;
    using System.Collections.Generic;

    public class RandomAccessMachine
    {
        private string ramFilePath;

        public RandomAccessMachine(string ramFilePath)
        {
            this.ramFilePath = ramFilePath;
        }

        public static void Main(string[] args)
        {
            string inputFile = args[0];
            var ram = new RandomAccessMachine(inputFile);
            ram.run();
        }

        private List<string> readRAMFile(string path) 
        {          
            System.IO.StreamReader file =
                new System.IO.StreamReader(path);
            var program = new List<string>();
            string line = null;

            while ((line = file.ReadLine()) != null)
            {
                program.Add(line);
            }

            return program;
        }

        private void run()
        {
            var program = readRAMFile(this.ramFilePath);
            var pc = 0;
            var memory = new int[32];

            var command = getCommand(program, pc);

            while(command.Item1 != "HLT")
            {
                switch(command.Item1) 
                {
                    case "ADD":
                        memory[0] += memory[command.Item2];
                        pc++;
                        break;
                    case "SUB":
                        memory[0] -= memory[command.Item2];
                        pc++;
                        break;
                    case "MUL":
                        memory[0] *= memory[command.Item2];
                        pc++;
                        break;
                    case "DIV":
                        memory[0] /= memory[command.Item2];
                        pc++;
                        break;
                    case "LDA":
                        memory[0] = memory[command.Item2];
                        pc++;
                        break;
                    case "LDK":
                        memory[0] = command.Item2;
                        pc++;
                        break;
                    case "STA":
                        memory[command.Item2] = memory[0];
                        pc++;
                        break;
                    case "INP":
                        Console.WriteLine("Input:");
                        memory[command.Item2] = Int32.Parse(Console.ReadLine());
                        pc++;
                        break;
                    case "OUT":
                        Console.WriteLine(memory[command.Item2]);
                        pc++;
                        break;
                    case "JMP":
                        pc = command.Item2;
                        break;
                    case "JEZ":
                        if (memory[0] == 0) {
                            pc = command.Item2;
                        }
                        else
                        {
                            pc++;
                        }
                        break;
                    case "JNE":
                        if (memory[0] != 0) {
                            pc = command.Item2;
                        } else
                        {
                            pc++;
                        }
                        break;
                    case "JLZ":
                        if (memory[0] < 0) {
                            pc = command.Item2;
                        }
                        else
                        {
                            pc++;
                        }
                        break;
                    case "JLE":
                        if (memory[0] <= 0) {
                            pc = command.Item2;
                        }
                        else
                        {
                            pc++;
                        }
                        break;
                    case "JGZ":
                        if (memory[0] > 0) {
                            pc = command.Item2;
                        }
                        else
                        {
                            pc++;
                        }
                        break;
                    case "JGE":
                        if (memory[0] >= 0) {
                            pc = command.Item2;
                        }
                        else
                        {
                            pc++;
                        }
                        break;
                    default:
                        Console.WriteLine($"Unknown command '{command.Item1}'. Aborting...");
                        break;
                }

                command = getCommand(program, pc);
            }

        }

        private Tuple<string, int> getCommand(List<string> programm, int pc)
        {
            var command = (programm.ElementAt(pc) ?? "HLT 99").Split(" ");
            return new Tuple<string, int>(command[0], Int32.Parse(command[1]));
        }
    }
}