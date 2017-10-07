<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Airport extends Model
{
	protected $primaryKey = "idairport";
	protected $table = "airport";

	public function flight()
	{
		return this->hasMany("App\flight","airport_idairport");
	}
}

