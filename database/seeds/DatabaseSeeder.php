<?php

use Illuminate\Database\Seeder;
use App\Message;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        factory(Message::class, 50)->create();
    }
}
