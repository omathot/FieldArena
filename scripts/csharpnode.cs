using Godot;
using System;

public partial class csharpnode : Node2D
{
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		GetMap();
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}

	static void GetMap()
	{
		GD.Print("Hello");
	}
}
