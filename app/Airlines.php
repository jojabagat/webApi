<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Airlines extends Model
{
    protected $table = 'airlines';
    protected $primaryKey = 'a_id';
    protected $fillable = ['a_name'];
}
