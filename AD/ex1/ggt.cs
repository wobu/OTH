using System;
using System.Collections.Generic;
using System.Linq;
					
public class ggT
{
	public static void Main()
	{
		var aS = Enumerable.Range(30, 11).ToList();
		var bS = Enumerable.Range(30, 11).ToList();
		
		foreach (var t in aS.SelectMany((l) => bS, (l, r) => Tuple.Create(l, r)))
		{
			System.Console.WriteLine("a = " + t.Item1 + "\tb =" + t.Item2);
			System.Console.WriteLine("\tggTImp:\t" + ggTImperative(t.Item1, t.Item2));
			System.Console.WriteLine("\tggTRec:\t" + ggTRecursive(t.Item1, t.Item2));
			System.Console.WriteLine("\tkgV:\t" + kgV(t.Item1, t.Item2));
			System.Console.WriteLine("\tMult:\t" + t.Item1 * t.Item2);
			System.Console.WriteLine("");
		}	
	}
	
	static int ggTImperative(int a, int b) 
	{
		int r = 0;
		
		do 
		{
			r = a % b;
			a = b;
			b = r;
		} while(r > 0);
		
		return a;
	}
	
	static int ggTRecursive(int a, int b) 
	{
		int r = a % b;
		
		if(r == 0)
			return b;
		else
			return ggTRecursive(b, r);
	}
	
	static int kgV(int a, int b) 
	{
		int i = 1;
		
		
		return 0;
	}
}