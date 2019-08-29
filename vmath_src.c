#include <math.h>

void
Sqrt(double *in, double *out, int size)
{
    for (int i = 0; i < size; i++)
    {
        out[i] = sqrt(in[i]);
    }
}
void
Sin(double *in, double *out, int size)
{
    for (int i = 0; i < size; i++)
    {
        out[i] = sin(in[i]);
    }
}
void
Cos(double *in, double *out, int size)
{
    for (int i = 0; i < size; i++)
    {
        out[i] = cos(in[i]);
    }
}
void
Tan(double *in, double *out, int size)
{
    for (int i = 0; i < size; i++)
    {
        out[i] = tan(in[i]);
    }
}
