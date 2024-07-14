<?php

namespace App\Http\Requests\LabPackage;

use Illuminate\Foundation\Http\FormRequest;

class LabPackageRequest extends FormRequest
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
            'name'=>'required|array|min:1',
            'name.en'=>'required|string',
            'name.ar'=>'required|string',
            'price'=>'required|string',
            'investigations'=>'required|array|min:1',
            'is_active'=>'required|boolean',
            'laboratory_id'=>'required|exists:laboratories,id',
        ];
    }

    protected function prepareForValidation()
    {
        return $this->merge(['is_active'=>isset($this->is_active) ? 1 : 0]);
    }

    public function messages()
    {
        return [
            'name.*.required'=>__('dashboard.laboratory.validation.name_required'),
            'price.required'=>__('dashboard.packages.validation.price_required'),
            'investigations.required'=>__('dashboard.packages.validation.investigations_required'),
        ] ;
    }
}
