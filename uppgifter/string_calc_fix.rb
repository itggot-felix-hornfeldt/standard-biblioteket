def in_post_fix(str)
    return "You need string" if str.length == 0
    output = []
    i = 0
    mathChars = "()^*/+-"
    infixarr = str.split("")
    opstack = []
    # p infixarr
    while i < infixarr.length
        if mathChars.include?(infixarr[i]) == false
            output.push(infixarr[i])
        else
            if opstack.length == 0
                opstack.push(infixarr[i])
            else
                case infixarr[i] 
                    when "("
                        opstack.push(infixarr[i])
                    when ")"
                        if opstack.include?("(")
                            z = opstack.length - 1
                            while opstack[z] != "("
                                output.push(opstack[z])
                                opstack.pop()
                                z -= 1
                            end
                            opstack.pop() 
                        else
                            return "Syntax Error"
                        end
                    when "^"
                        z = opstack.length - 1
                        while z >= 0
                            if opstack[z] == infixarr[i]
                                opstack.push(infixarr[i])
                                break
                            elsif opstack[z] == "+" || opstack[z] == "-" || opstack[z] == "*" || opstack[z] == "/"
                                output.push(opstack[z])
                                opstack.pop()
                            elsif z == 0
                                opstack.push(infixarr[i])
                                break
                            else
                                opstack.push(infixarr[i])
                                break
                            end
                            z -= 1
                        end
                    when "*", "/"
                        z = opstack.length - 1
                        while z >= 0
                            if opstack[z] == infixarr[i]
                                opstack.push(infixarr[i])
                                break
                            elsif opstack[z] == "+" || opstack[z] == "-"
                                output.push(opstack[z])
                                opstack.pop()
                            elsif z == 0
                                opstack.push(infixarr[i])
                                break
                            else
                                opstack.push(infixarr[i])
                                break
                            end
                        end
                    when "+", "-"
                        z = opstack.length - 1
                        while z >= 0
                            if opstack[z] == infixarr[i]
                                opstack.push(infixarr[i])
                                break
                            elsif opstack[z] == "*" || opstack[z] == "/" || opstack[z] == "^"
                                output.push(opstack[z])
                                opstack.pop()
                            elsif z == 0
                                opstack.push(infixarr[i])
                                break
                            else
                                opstack.push(infixarr[i])
                                break
                            end
                        end
                end
            end
        end
        i += 1
    end
    if opstack.length > 0
        output += opstack
    end
    return output
end

def evaluatePostfix(str)
    postfix = in_post_fix(str)
    p postfix
    epf = 0
    sumStack = []
    finalSum = 0
    operands = "0123456789"
    mathChars = "()^*/+-"
    while epf < postfix.length
        if operands.include?(postfix[epf])
            temp = postfix[epf].to_i
            sumStack.push(temp)
        elsif mathChars.include?(postfix[epf])
            first = sumStack[sumStack.length-2]
            second = sumStack[sumStack.length-1]
            sumStack.pop(2)
            case postfix[epf]
            when "^"
                tempSum = first ** second
                sumStack.push(tempSum)
            when "*"
                tempSum = first * second
                sumStack.push(tempSum)
            when "/"
                tempSum = first / second
                sumStack.push(tempSum)
            when "+"
                tempSum = first + second
                sumStack.push(tempSum)
            when "-"
                tempSum = first - second
                sumStack.push(tempSum)
            end
        else
            return "ERROR"
        end
        p sumStack
        epf += 1
    end
    finalSum = sumStack[0].to_i
    return finalSum
end

p evaluatePostfix("(6*4+6)/(3*5)+(9^3*2-5^3+2)")