#include <stdio.h>

static const size_t N = 4;
static const size_t M = 2;

void process(int n, int m, int matrix [M][N], int *result)
{
    int sum = 0;
    for (int i = 0; i < m; ++i) {
        for (int j = 0; j < n; ++j) {
            if (matrix[i][j] > 0){
                sum += matrix[i][j];
            }
        }
    }
    *result = sum;
}

int main(int argc, char** argv)
{
    int matrix[M][N];
    int result;
    
    for (int i = 0; i < M; ++i) {
        for (int j = 0; j < N; ++j) {
            scanf("%d", &matrix[i][j]);
        }
    }

    process(N, M, matrix, &result);

    printf("%d", result);

    return 0;
}