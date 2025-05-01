import { Failure } from './failure';

export class NotFoundFailure extends Failure {
  constructor(message: string) {
    super(message);
  }
}
