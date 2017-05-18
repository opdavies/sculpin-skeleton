<?php

namespace SculpinSkeleton\composer;

use Composer\Script\Event;
use Symfony\Component\Filesystem\Filesystem;

class ScriptHandler
{
    public static function createRequiredFiles(Event $event)
    {
        $fs = new Filesystem();

        $sculpinRoot = getcwd();

        $dirs = [
            'app/config',
            'source',
        ];

        foreach ($dirs as $dir) {
            if (!$fs->exists("$sculpinRoot/$dir")) {
                $fs->mkdir("$sculpinRoot/$dir");
                $fs->touch("$sculpinRoot/$dir/.gitkeep");
            }
        }
    }
}
