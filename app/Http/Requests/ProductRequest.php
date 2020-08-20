<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            "name" => "required",
            "cost" => "required|numeric",
            "price" => "required|numeric",
            "barcode" => "required",
            "alert_qty" => "required",
            "category" => "required",
            "unit" => "required",
            "brand" => "required",
        ];
    }
}
