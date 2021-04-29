namespace Graphpinator\Exception\Tokenizer;

abstract class TokenizerError extends \Graphpinator\Exception\GraphpinatorBase
{
    final public function __construct(\Graphpinator\Common\Location $location)
    {
        parent::__construct();

        $this->location = $location;
    }

    final public function isOutputable() : bool
    {
        return true;
    }
}
