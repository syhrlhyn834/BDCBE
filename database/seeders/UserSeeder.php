<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            'name'      => 'Syahril Haryono',
            'email'     => 'syhrlhyn1234@gmail.com',
            'nomor'     => '081990493050',
            'password'  => Hash::make('password'),
        ]);
    }
}
