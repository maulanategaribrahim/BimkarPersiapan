<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table('jadwal_periksas', function (Blueprint $table) {
            $table->foreignId('id_poli')->nullable()->constrained('polis')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::table('jadwal_periksas', function (Blueprint $table) {
            $table->dropForeign(['id_poli']);
            $table->dropColumn('id_poli');
        });
    }
};
