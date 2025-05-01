import { Failure } from '../failures/failure';

class Right<R> {
    constructor(_: Failure, private readonly _value: R) {}

    get right(): R {
        return this._value;
    }

    get left(): Failure {
        // @ts-ignore
        return null;
    }

    get isRight(): boolean {
        return true;
    }

    get isLeft(): boolean {
        return false;
    }

    fold<T>(_leftFn: (_: Failure) => T | void, rightFn: (_: R) => T): T | void {
        return rightFn(this._value);
    }
}

class Left<R> {
    constructor(private readonly _value: Failure, _: R) {}

    get left(): Failure {
        return this._value;
    }

    get right(): R {
        // @ts-ignore
        return null;
    }

    get isRight(): boolean {
        return false;
    }

    get isLeft(): boolean {
        return true;
    }

    fold<T>(leftFn: (_: Failure) => T | void, _rightFn: (_: R) => T): T | void {
        return leftFn(this._value);
    }
}

export type Either<R> = Left<R> | Right<R>;

export type EitherPromise<R> = Promise<Either<R>>;

// @ts-ignore
const right = <R>(value: R) => new Right<R>(null, value);

// @ts-ignore
const left = <R>(value: Failure) => new Left<R>(value, null);

export { right as Right, left as Left };
