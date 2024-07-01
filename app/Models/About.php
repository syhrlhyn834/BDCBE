<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class About extends Model
{
    use HasFactory;
    /**
     * fillable
     *
     * @var array
     */
    protected $fillable = [
        'description'
    ];

    protected function image(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => url('/storage/abouts/' . $value),
        );
    }
}
