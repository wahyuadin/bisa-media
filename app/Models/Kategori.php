<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kategori extends Model
{
    use HasFactory, HasUuids;
    protected $guarded = [];

    public function buku() {
        return $this->hasMany(Buku::class);
    }

    public static function getAll() {
        return Self::with('buku')->latest()->get();
    }
}
