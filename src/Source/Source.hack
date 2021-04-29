namespace Graphpinator\Source;

interface Source extends \Iterator
{
    public function hasChar() : bool;

    public function getChar() : string;

    public function getLocation() : \Graphpinator\Common\Location;
}
