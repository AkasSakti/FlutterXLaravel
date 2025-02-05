'connections' => [
    'mongodb' => [
        'driver'   => 'mongodb',
        'host'     => env('DB_HOST', '127.0.0.1'),
        'port'     => env('DB_PORT', 27017),
        'database' => env('DB_DATABASE'),
        'username' => env('DB_USERNAME'),
        'password' => env('DB_PASSWORD'),
        'options'  => [
            'database' => 'admin' // Sesuaikan jika perlu
        ]
    ],
],
//php artisan config:clear
