   public function up()
   {
       Schema::create('ruangans', function (Blueprint $table) {
           $table->id();
           $table->string('kode_ruang');
           $table->string('nama_ruang');
           $table->integer('kapasitas');
           $table->timestamps();
       });
   }
