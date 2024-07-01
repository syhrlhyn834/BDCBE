<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Anggota extends Model
{
    use HasFactory;

    /**
     * fillable
     *
     * @var array
     */
    protected $fillable = [
        'name', 'slug', 'umur', 'alamat', 'description', 'image', 'posisi'
    ];

    protected function image(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => url('/storage/anggotas/' . $value),
        );
    }
}
