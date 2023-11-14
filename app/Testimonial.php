<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Testimonial extends Model
{
	protected $table = "testimonials";
    protected $fillable = ['content','name','profession','video_id'];
}
