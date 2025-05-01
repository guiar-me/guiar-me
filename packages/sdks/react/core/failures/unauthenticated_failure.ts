import { Failure } from './failure';

export class UnauthenticatedFailure extends Failure {
  constructor(message: string) {
    super(message);
  }
}
