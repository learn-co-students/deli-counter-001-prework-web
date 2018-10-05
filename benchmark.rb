require 'benchmark'

n = 1000
arrayA = []
arrayB = []
arrayC = [2, 3, 4]

Benchmark.bm do |x|
	#Testing Array.push vs << operator performance
	x.report("   push:")	{n.times do; arrayA.push(1); end}
	x.report("     <<:")	{n.times do; arrayB << 1; end}
	#Testing speed for finding the index for last absolute index
	x.report("  .size:")	{n.times do; arrayC.size; end}
	x.report(".length:")	{n.times do; arrayC.length; end}
	x.report("   [-1]:")	{n.times do; arrayC.index(4) + 1; end}
end
