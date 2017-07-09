<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFieldsToBookingTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('bookings', function (Blueprint $table) {

            $table->integer('type_of_payment');
            $table->integer('status_of_payment');
            $table->integer('id_of_payment');


        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('bookings', function (Blueprint $table) {

            $table->dropColumn(['type_of_payment']);
            $table->dropColumn(['status_of_payment']);
            $table->dropColumn(['id_of_payment']);

        });
    }
}
