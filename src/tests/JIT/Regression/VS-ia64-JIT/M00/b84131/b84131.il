// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.

.assembly extern legacy library mscorlib {}
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 4:0:0:0
}
.assembly 'bge'{}
.method public	static int32 main() {
.entrypoint
	ldc.r4		1.0
	ldc.r4		-1.0
	bge			next3
	ldc.i4		0x1
	ret
next3:
	ldc.r4		1.0
	ldc.r4		1.0
	bge			next4
	ldc.i4		0x2
	ret
next4:
	ldc.r4		1.0
	ldc.r4		-1.0
	bge.un		pass
	ldc.i4		0x3
	ret

pass:
	ldc.i4		100
end:
	ret
}

