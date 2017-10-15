<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Class extends Model
{
    protected $table = 'class';
    protected $primaryKey = 'c_id';
    protected $fillable = ['c_name'];
}
