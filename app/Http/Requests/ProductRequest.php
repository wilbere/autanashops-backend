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
            "barcode" => "required|unique:products",
            "cost" => "required|numeric|min:0.00|max:99999999999999999999.99|regex:/^\d+(\.\d{1,2})?$/",
            "price" => "required|numeric|min:0.00|max:99999999999999999999.99|regex:/^\d+(\.\d{1,2})?$/",
            "weight" => "required|numeric|min:0.00|max:9999999999.99|regex:/^\d+(\.\d{1,2})?$/",
            // "wholesale_price" => "numeric|min:0.00|max:99999999999999999999.99|regex:/^\d+(\.\d{1,2})?$/",
            // "wholesale_qty" => "numeric",
            // "warranty_days" => "numeric",
            "alert_qty" => "required|numeric",
            "category" => "required",
            "unit" => "required",
            "brand" => "required",
        ];
    }
}
