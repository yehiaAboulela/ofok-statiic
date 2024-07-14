<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMyWithdrawsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('my_withdraws', function (Blueprint $table) {
            $table->id();
            $table->integer('doctor_id');
            $table->integer('method_id');
            $table->double('total_amount');
            $table->double('withdraw_amount');
            $table->double('withdraw_charge');
            $table->text('account_info');
            $table->string('approved_date')->nullable();
            $table->integer('status')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('my_withdraws');
    }
}
