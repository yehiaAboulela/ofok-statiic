<?php

namespace App\Http\Requests\Investigation;

use Illuminate\Foundation\Http\FormRequest;

class InvestigationRequest extends FormRequest
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
            'price'=>'required|numeric|min:0',
            'is_active'=>'required|boolean',
        ];
    }

    protected function prepareForValidation()
    {
        return $this->merge(['is_active'=>isset($this->is_active) ? 1 : 0]);
    }

    public function messages()
    {
        return [
            'name.*.required'=>__('dashboard.investigations.validation.name_required'),
            'price.required'=>__('dashboard.investigations.validation.price_validation'),
        ] ;
    }
}
