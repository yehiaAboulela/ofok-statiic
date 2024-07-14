<?php

namespace App\Http\Requests\Laboratory;

use Illuminate\Foundation\Http\FormRequest;

class LaboratoryRequest extends FormRequest
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
            'name.ar'=>'nullable|string',
            'phone'=>'nullable|string',
            'address'=>'required|string',
            'map_url'=>'string|nullable|url',
            'working_time'=>'string|nullable',
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
            'name.*.required'=>__('dashboard.laboratory.validation.name_required'),
            'address.required'=>__('dashboard.laboratory.validation.address_required')
        ] ;
    }
}
