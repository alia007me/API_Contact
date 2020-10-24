<?php

namespace App\Http\Requests\api\user;

use Illuminate\Foundation\Http\FormRequest;

class UserEditRequest extends FormRequest
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
            'password' => 'min:8',
            'email' => 'required|unique:users'
        ];
    }

    public function messages()
    {
        return [
            'required' => ':attribute is required!',
            'password.min' => ':attribute must be over 8 characters!',
            'email.unique' => 'This :attribute is already exist!'
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
