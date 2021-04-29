namespace Graphpinator\Exception\Tokenizer;

final class NumericLiteralFollowedByName extends \Graphpinator\Exception\Tokenizer\TokenizerError
{
    public const MESSAGE = 'Numeric literal cannot be followed by name.';
}
