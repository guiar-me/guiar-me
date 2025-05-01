import { Failure } from './failure';

export class UnexpectedFailure extends Failure {
  constructor(message: string) {
    super(message);
  }
}
