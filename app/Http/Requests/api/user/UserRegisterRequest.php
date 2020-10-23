<?php

namespace App\Http\Requests\api\user;

use Illuminate\Foundation\Http\FormRequest;

class UserRegisterRequest extends FormRequest
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
            'name' => 'required|unique:users',
            'password' => 'required|min:8',
            'email' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'required' => ':attribute is required!',
            'password.min' => ':attribute must be over 8 characters!',
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'Name',
            'password' => 'Password',
            'email' => 'Email'
        ];
    }
}
