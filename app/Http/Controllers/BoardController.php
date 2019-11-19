<?php

namespace App\Http\Controllers;

use GuzzleHttp\Client;
use Illuminate\Http\Request;
use App\Message;
use Validator;

class BoardController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Message::paginate(15);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            if (env('IS_PASS')) {
                $client = new Client();
                $res_to = $client->request('POST', env('PASS_URL'), [
                    'form_params' => [
                        'name' => $request->name,
                        'msg' => $request->msg
                    ]
                ]);
                $response = (string)$res_to->getBody();

                return $response;
            } else {
                $create = Message::create([
                    'name' => $request['name'],
                    'msg' => $request['msg'],
                ]);
                if ($create) {
                    $result = $create->toArray();
                    return response()->json($result);
                }
            }

        } catch (Exception $error) {
            return $this->sendError($error->getMessage(), 500);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
