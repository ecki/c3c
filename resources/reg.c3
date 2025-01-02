module test;
import std, test2;

int[2] x;

macro @test2(&a = x[1])
{
	*a = 123;
}
macro test($Type = int)  {  }

fn void testme() {  }
macro @test3(#foo = testme()) => #foo;

fn void main()
{
	test2::@test3();
	io::printn(test2::x);

}

module test2;
import std;

int[2] x;

macro @test2(&a = x[1])
{
	*a = 12;
}
macro test($Type = double)  {  return; }

fn void testme() { x[0]++; }
macro @test3(#foo = testme()) => #foo;
