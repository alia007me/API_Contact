<?php

namespace App\Http\Requests\api\contacts;

use Illuminate\Foundation\Http\FormRequest;

class ContactCreateRequest extends FormRequest
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
            'name' => 'required',
            'phone_number' => 'required',
            'avatar' => 'image|mimes:jpeg,jpg,png,gif'
        ];
    }

    public function messages()
    {
        return [
            'required' => ':attribute is required!',
            'avatar.mimes' => ':attribute extension is not valid!'
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'Name',
            'phone_number' => 'Phone Number',
            'avatar' => 'Profile Image'
        ];
    }
}
