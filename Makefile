all: simd_imprints

simd_imprints: simd_imprints.c simd_imprints.h
	clang -g -march=native -Wall simd_imprints.c -lm -o simd_imprints

fast:
	clang -O3 -march=native simd_imprints.c -lm -o simd_imprints

clean: simd_imprints
	rm simd_imprints
