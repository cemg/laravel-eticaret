<?php

namespace App\Handlers;

use Auth;

class LfmConfigHandler extends \Unisharp\Laravelfilemanager\Handlers\ConfigHandler
{
    public function userField()
    {
        return Auth::guard('yonetim')->user()->id;
    }
}
