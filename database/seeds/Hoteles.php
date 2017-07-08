<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class Hoteles extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        for ($i=0; $i < 50; $i++) {
           \DB::table('hoteles')->insert(array(
           'price_per_day'=> $faker->randomElement([50, 30, 120, 300, 40, 70, 90, 88]),

         ));
     }
    }
}
