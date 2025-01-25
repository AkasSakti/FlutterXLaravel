//tambahkan kode 
   use App\Http\Controllers\RuanganController;//diatas baris 5 atau 4

   Route::apiResource('ruangans', RuanganController::class);//sebelum route middleware
