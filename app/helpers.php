<?php

function str_database($string)
{
    return (str_replace('-', '_', str_replace(' ', '', str_slug($string))));
}