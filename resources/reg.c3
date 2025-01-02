module test;
import std, test2;

int[2] x;

macro @test2(&a = x[1])
{
	*a = 123;
}
macro test($Type = int)  { io::printn($Type.nameof); }

fn void testme() { io::printn("Testme"); }
macro @test3(#foo = testme()) => #foo;

fn void main()
{
	test2::@test3();
}

module test2;
import std;

int[2] x;

macro @test2(&a = x[1])
{
	*a = 12;
}
macro test($Type = double)  { io::printn($Type.nameof); }

fn void testme() { io::printn("Testme2"); }
macro @test3(#foo = testme()) => #foo;
