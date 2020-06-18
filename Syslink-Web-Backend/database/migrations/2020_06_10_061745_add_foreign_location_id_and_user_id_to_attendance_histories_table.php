<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignLocationIdAndUserIdToAttendanceHistoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('attendance_histories', function (Blueprint $table) {
            $table->unsignedBigInteger('location_id')->after('check_img');
            $table->unsignedBigInteger('employee_id')->after('location_id');
            $table->foreign('location_id')->references('id')->on('locations');
            $table->foreign('employee_id')->references('id')->on('employees');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('attendance_histories', function (Blueprint $table) {
            
        });
    }
}
