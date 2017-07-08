<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableBookings extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bookings', function (Blueprint $table) {
            $table->increments('id');                    
            $table->string('name');
            $table->string('surname');
            $table->string('NIF/DNI'); 
            $table->string('mobile');        
            $table->date('date_start_booking');
            $table->date('date_end_booking');
            $table->integer('range_date');            
            $table->longtext('notes');    
            $table->float('ammount');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('bookings');
    }
}
