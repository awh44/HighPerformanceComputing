cache_sizes = [];
stride_sizes = [];
row = 1;
for i = 12:22
	col = 1;
	for j = 2:(i - 1)
		cache_sizes(row, col) = 2^i;
		stride_sizes(row, col) = 2^j
		col = col + 1;
	end
	row = row + 1;
end

rw_times = [
	0.008464, 0.000769, 0.001938, 0.003221, 0.006836, 0.013223, 0.026086, -0.052131, -0.104077, -0.208714, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
	0.000634, 0.000421, 0.001013, 0.001813, 0.003366, 0.006745, 0.013206, 0.026109, -0.051947, -0.103930, 0.013186, 0, 0, 0, 0, 0, 0, 0, 0, 0;
	0.000741, 0.000564, 0.000882, 0.001204, 0.001718, 0.003649, 0.006744, 0.012881, 0.026992, -0.024398, 0.025952, 0.020531, 0, 0, 0, 0, 0, 0, 0, 0;
	0.000285, 0.000303, 0.000388, 0.000476, 0.001044, 0.001700, 0.003330, 0.006550, 0.012783, 0.104422, -0.025647, 0.025581, 0.039630, 0, 0, 0, 0, 0, 0, 0;
	0.002282, 0.003780, 0.005714, 0.010677, 0.024622, 0.044822, 0.090228, 0.355822, 0.639867, 1.294306, 1.290660, -0.025515, -0.041511, 0.202796, 0, 0, 0, 0, 0, 0;
	0.012294, 0.016489, 0.029848, 1.561118, 5.515681, 3.961843, 3.863372, 3.583804, 3.645845, 4.311606, 5.309658, 15.576172, 15.432248, 13.053131, 0.200353, 0, 0, 0, 0, 0;
	0.014637, 0.020394, 0.050379, 1.787263, 5.468121, 3.921612, 3.887100, 3.572874, 3.695362, 5.436065, 9.085773, 16.813278, 14.858047, 25.221647, 13.053954, 0.186328, 0, 0, 0, 0;
	0.024631, 0.040014, 0.291596, 1.982673, 5.972636, 5.013200, 4.735279, 4.398525, 4.439659, 6.723738, 10.729671, 15.680977, 14.953979, 24.825033, 24.712855, 13.053821, 0.191454, 0, 0, 0;
	0.062873, 0.105374, 0.686622, 3.103698, 7.497848, 7.040107, 6.617393, 6.555275, 6.670502, 10.300569, 14.062749, 16.304918, 16.040958, 25.279737, 25.995309, 24.698734, 13.050916, 0.204699, 0, 0;
	0.060377, 0.106855, 0.688707, 3.112429, 7.509916, 7.117748, 6.622351, 6.555227, 6.673358, 10.365613, 14.141151, 16.608985, 17.879181, 25.380540, 24.432826, 24.490523, 24.783039, 13.058240, 0.193833, 0;
	0.082441, 0.138044, 0.730900, 3.180205, 7.633257, 7.032506, 6.672696, 6.605816, 6.617308, 8.495665, 14.754121, 18.187936, 18.893194, 32.975507, 32.168794, 26.804686, 25.554252, 26.449800, 13.051307, 0.200605;
];

h = mesh(cache_sizes, stride_sizes, rw_times);
ylabel('Stride Size (Bytes) ');
xlabel('Working Set Size (Bytes)');
zlabel('Average Read/Write Time (ns)');
set(gca, 'XScale', 'log');
set(gca, 'YScale', 'log');