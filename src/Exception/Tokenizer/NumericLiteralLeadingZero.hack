namespace Graphpinator\Exception\Tokenizer;

final class NumericLiteralLeadingZero extends \Graphpinator\Exception\Tokenizer\TokenizerError
{
    public const MESSAGE = 'Numeric literal with leading zeroes.';
}
