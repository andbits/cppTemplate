
constexpr int factorial( int v )
{
    return v > 0 ? v * factorial( v-1 ) : 1;
}

constexpr const auto n = factorial( 5 );

static_assert( n == 120, "" );

int main( int /*unused*/, char *[] /*unused*/ )
{
    return 0;
}
