#include <stdio.h>

int maxOfArray(int n, int arr[]) {
	int maxValue = arr[0];
	for (int i = 0; i < n; i++) {
		if (arr[i] > maxValue) {
			maxValue = arr[i];
		}
	}
	return maxValue;
}

int minOfArray(int n, int arr[]) {
	int minValue = arr[0];
	for (int i = 0; i < n; i++) {
		if (arr[i] < minValue) {
			minValue = arr[i];
		}
	}
	return minValue;
}

int main() {
	int n;
	int arr[1000];
	scanf("%d", &n);
	for (int i = 0; i < n; i++) {
		scanf("%d", &arr[i]);
	}
	printf("%d %d", maxOfArray(n, arr), minOfArray(n, arr));

	return 0;
}
