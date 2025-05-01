import {
    Either,
    EitherPromise,
    Failure,
    Left,
    NotFoundFailure,
    Right,
    UnauthenticatedFailure,
    UnexpectedFailure,
} from './core'
import { LegalContentRepository } from './data';
import { LegalContentModel } from './domain';
import { HttpClient } from './infra'

const httpClient = new HttpClient();
const legalContentRepository = new LegalContentRepository(httpClient);

export {
    legalContentRepository,
    LegalContentModel,
    Either,
    EitherPromise,
    Left,
    Right,
    Failure,
    NotFoundFailure,
    UnauthenticatedFailure,
    UnexpectedFailure,
}