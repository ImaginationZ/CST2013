#include <cstdlib>
#include <cstdio>
#include <cmath>
#include "ctime"
#include "fstream"
#include "algorithm"
#include <iostream>

using namespace std;

ofstream file("output.txt");

const double radius = 100;
const int d = 1000;//origin dimension
const int testnum = 8;
const int k[ testnum ] = {100, 50, 20, 5, 4, 3, 2, 1};//set of dimension k
const int N = 20;//number of points generated

const double pi = 3.1415926535897932384626433;

double** coordinate;

double gaussian(double sigma){
    double flag = rand() % 2;
    flag -= 0.5;
    flag *= 2;
    return flag * sqrt( - 2 * sigma*sigma * log(( rand()+1.0 ) / RAND_MAX));
}

void generate(int N, int d){
    coordinate = new double*[ N ];
    for (int i = 0; i < N; ++i)
    {
        double length = 0;
        coordinate[ i ] = new double[ d ];
        for (int j = 0; j < d; ++j)
        {
            coordinate[ i ][ j ] = gaussian( 1 );
            length += pow( coordinate[ i ][ j ], 2 );
        }
        length = sqrt( length );
        if(length != 0)
            for (int j = 0; j < d; ++j)
            {
                coordinate[ i ][ j ] *= radius / length;
            }
    }
}

double get_distance( double* x, double* y, int d ){
    double dis = 0;
    for (int p = 0; p < d; ++p)
    {
        dis += pow( x[ p ] - y[ p ], 2 );
    }
    return sqrt( dis );
}

void anylize_distance( double** p ,int d, int n, int &num, double &exp, double &var ){
    num = 0;
    exp = 0;
    var = 0;
    double* dis = new double[ n*n /2 ];
    for (int i = 0; i < n; ++i)
    {
        for (int j = i+1; j < n; ++j)
        {
            dis[ num ] = get_distance(p[i], p[j], d);
            exp += dis[num];
            ++num;
        }
    }
    exp /= num;
    sort(dis, dis+num);
    for(int i = 0; i < num; ++i){
        file << dis[i] << ' ';
        var += pow( dis[i] - exp, 2 );
    }
    file << endl;
    var /= num;
    file << "expection=" << exp <<endl;
    file << "var=" << var << endl;
    file << endl;
    delete[] dis;
}

void anylize_project( double** p, int k, int d, int n, double& var ){
    int num = 0;
    var = 0;
    for (int i = 0; i < n; ++i)
    {
        for (int j = i+1; j < n; ++j)
        {
            var += pow( get_distance(p[ i ], p[ j ], k) - get_distance(p[ i ], p[ j ], d) * sqrt( k ) / sqrt( d ), 2 );
            ++num;
        }
    }
    file << "The squared error between the original distances and the new pair wise distances in "<< k<<" dimension projecting is "<< sqrt(var)<<endl;
}

int main(int argc, char *argv[])
{
    srand(time(NULL));
    generate(N,d);
    int num;
    double exp,var;
    anylize_distance( coordinate, d, N, num, exp, var );
    
    for( int i = 0; i < testnum; ++i){
        anylize_distance( coordinate, k[ i ], N, num, exp, var );
    }
    
    for( int i = 0; i < testnum; ++i){
        anylize_project(coordinate, k[i], d, N, var);
    }
    return 0;
}
