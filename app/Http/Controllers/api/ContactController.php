<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Requests\api\contacts\ContactCreateRequest;
use App\Http\Requests\api\contacts\ContactUpdateRequest;
use App\Models\Contact;
use Faker\Provider\bn_BD\Person;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ContactController extends Controller
{
    public function create(ContactCreateRequest $contactRequest)
    {
        $avatarName = "";
        if ($contactRequest->avatar) {
            $avatarName = time() . '.' . $contactRequest->avatar->extension();
            $contactRequest->avatar->move(public_path('people_avatar'), $avatarName);
        }

        Contact::create([
            'name' => $contactRequest->post('name'),
            'family' => $contactRequest->post('family'),
            'phone_number' => $contactRequest->post('phone_number'),
            'email' => $contactRequest->post('email'),
            'avatar' => $avatarName,
            'user_id' => Auth::id()
        ]);

        return response()->json([
            'message' => 'Contact saved!',
            'status' => 'Done'
        ]);
    }

    public function update(ContactUpdateRequest $contactRequest, $id, Contact $contact)
    {
        $avatarName = Contact::find($id)['avatar'];
        if ($contactRequest->avatar)
            if ($avatarName != "") {
                \File::delete(public_path('people_avatar') . "\\" . $avatarName);
                $avatarName = time() . '.' . $contactRequest->avatar->extension();
                $contactRequest->avatar->move(public_path('people_avatar'), $avatarName);
            } else {
                $avatarName = time() . '.' . $contactRequest->avatar->extension();
                $contactRequest->avatar->move(public_path('people_avatar'), $avatarName);
            }

        Contact::find($id)->update([
            'name' => $contactRequest->post('name'),
            'family' => $contactRequest->post('family'),
            'phone_number' => $contactRequest->post('phone_number'),
            'email' => $contactRequest->post('email'),
            'avatar' => $avatarName,
            'user_id' => Auth::id()
        ]);

        return response()->json([
            'message' => 'Contact update!',
            'status' => 'Done'
        ]);
    }

    public function delete($id)
    {
        $result = false;
        if (Contact::find($id)) {
            $result = Contact::find($id)->delete();
        } else
            return response()->json([
                'message' => 'Contact is not exist!',
                'status' => 'Failed'
            ]);

        if ($result)
            return response()->json([
                'message' => 'Contact deleted!',
                'status' => 'Done'
            ]);
        else
            return response()->json([
                'message' => 'Contact could not delete!',
                'status' => 'Failed'
            ]);
    }

    public function list()
    {
        if (!Auth::check()) {
            return redirect('/login');
        }
        $contacts = Auth::user()->contacts()->get();
        return response()->json($contacts);
    }
}
