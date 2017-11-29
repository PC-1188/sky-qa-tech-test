<?php
class Calculator implements iCalculator {
    protected $stack;
    protected $op;
    protected $result;
	
    public function add($a,$b) {
		return ($a + $b);
    }
    public function subtract($a, $b) {
        return ($a - $b);
    }
    public function multiply($a, $b) {
        return ($a * $b);
    }
    
    public function divide($a, $b) {
	    return ($a / $b);
    }

	public function factorial($a) {
	    $factorial = 1;
		for($x=$a;$x>=1;$x--)
		{
			$factorial = $factorial*$x;
		}
		return ($factorial);
    }
	public function cubeRoot($a) {
		$number = floor(pow($a, (float)1/3));
		if (pow($number,3)<=$a)
		{
			if($number>3)
			{
				return ($number+1);
			}
			else
			{
				return ($number);
			}
		}
	}
	public function decToHex($a) {
		$number = $a;
		$hexvalues = array('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
		$hexval = '';
		while($number != '0')
			{
				$bcmod = bcmod($number,'16');//remainder of number divided by 16
				$hexval = $hexvalues[$bcmod].$hexval;//hexvalues array value at bcmod position
				$number = bcdiv($number,'16',0); //dividend of number divided by 16 into number
			}
		return $hexval;
	}
    public function pressNumber($number) {
        $this->stack[] = $number;
    }
    public function pressAdd() {
        if(count($this->stack) > 1) {
            $this->evaluateStack();
        }
        $this->op = "+";
    }
    public function pressSubtract() {
        if(count($this->stack) > 1) {
            $this->evaluateStack();
        }
        $this->op = "-";
    }
    public function pressMultiply() {
        if(count($this->stack) > 1) {
            $this->evaluateStack();
        }
        $this->op = "*";
    }
    public function pressDivide() {
        if(count($this->stack) > 1) {
            $this->evaluateStack();
        }
        $this->op = "/";
    }
	
	public function pressFactorial() {
        $this->op = "!";
		if(count($this->stack) > 1) {
            $this->evaluateStack();
        }
	}	

	public function pressCubeRoot() {
		$this->op = "√";
		if(count($this->stack) > 1) {
			$this->evaluateStack();
		}
	}
	
	public function pressdecToHex() {
		$this->op = "#";
		if(count($this->stack) > 1) {
			$this->evaluateStack();
		}
	}
	
    public function pressEquals() {
        return $this->evaluateStack();
    }
    protected function evaluateStack() {
        switch($this->op) {
            case "+":
                $result = $this->add(array_shift($this->stack), array_shift($this->stack));
                break;
            case "-":
                $result = $this->subtract(array_shift($this->stack), array_shift($this->stack));
                break;
            case "*":
                $result = $this->multiply(array_shift($this->stack), array_shift($this->stack));
                break;
            case "/":
                $result = $this->divide(array_shift($this->stack), array_shift($this->stack));
                break;
			case "!":
                $result = $this->factorial(array_shift($this->stack));
                break;
			case "√":
                $result = $this->cubeRoot(array_shift($this->stack));
                break;
			case "#":
                $result = $this->decToHex(array_shift($this->stack));
                break;
        }
        $this->clearStack();
        $this->stack[] = $result;
    }
    protected function clearStack() {
        $this->stack = array();
    }
    public function readScreen() {
        $value = array_shift($this->stack);
        return $value;
    }
}