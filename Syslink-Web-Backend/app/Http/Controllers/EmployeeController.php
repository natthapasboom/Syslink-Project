<?php

namespace App\Http\Controllers;

use App\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.employee_manage');
    }

   


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    protected function create(array $data)
    {
     
    }

   
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,array(
            'name' => ['required',],
            'surname' => ['required',],
            'username' => ['required','max:7','unique:employees'],
            'password' => ['required',],
            'department' => ['required',],
            'role_id' => ['required',]
        ));
      
        
        $employee = new Employee();

        $employee->name = $request->input('name');
        $employee->surname = $request->input('surname');
        $employee->username = $request->input('username');
        $employee->password = Hash::make($request->input('password'));
        $employee->department = $request->input('department');
        $employee->role_id = $request->input('role_id');
        $employee->save();
        return redirect()->back();
    }


   

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    public function delete($id)
    {
        $employee = Employee::find($id);
        $employee->delete();
        return redirect()->back();

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,array(
            'name' => ['required',],
            'surname' => ['required',],
            'username' => ['required','min:7','max:7'],
            'password' => ['required','min:5'],
            'department' => ['required',],
            'role_id' => ['required',]
        ));
        
        $employee = Employee::find($id);

        $employee->name = $request->input('name');
        $employee->surname = $request->input('surname');
        $employee->username = $request->input('username');
        $employee->password = Hash::make($request->input('password'));
        $employee->department = $request->input('department');
        $employee->role_id = $request->input('role_id');
        $employee->update();
        return redirect()->back();


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
