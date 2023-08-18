<?php

namespace App\Http\Controllers;

use App\Models\AccountHead;
use App\Models\Project;
use App\Models\PurchaseOrder;
use App\Models\SalesOrder;
use App\Models\TransactionLog;
use Maatwebsite\Excel\Facades\Excel;

class DashboardController extends Controller
{
    public function home(){
        return view('welcome');
    }

    public function index() {
        return view('dashboard');
    }

    public function studentDashboard() {
        return view('student.dashboard');
    }

    public function organizationDashboard() {
        return view('organization.dashboard');
    }
}
