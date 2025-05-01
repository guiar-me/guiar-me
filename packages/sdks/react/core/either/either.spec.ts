import { faker } from '@faker-js/faker';
import { Either, Left, Right } from './either';
import { describe, expect, it } from 'vitest';
import { NotFoundFailure } from '../failures/not_found_failure';

describe('Either', () => {
    it('should be able verify a true left return', () => {
        const result: Either<string> = Left(new NotFoundFailure(faker.lorem.sentence()));

        expect(result.isLeft).toBeTruthy();
        expect(result.isRight).toBeFalsy();
    });

    it('should be able verify a true right return', () => {
        const result: Either<string> = Right(faker.lorem.sentence());

        expect(result.isRight).toBeTruthy();
        expect(result.isLeft).toBeFalsy();
    });

    it('should be able get a right and left data when result is left', () => {
        const error = faker.lorem.sentence();
        const result: Either<string> = Left(new NotFoundFailure(error));

        result.fold(
            left => {
                expect(left).toBeInstanceOf(NotFoundFailure);
                expect(left.message).toBe(error);
            },
            right => {
                expect(right).toBeNull();
            },
        );
    });

    it('should be able get a right and left data when result is right', () => {
        const message = faker.lorem.sentence();
        const result: Either<string> = Right(message);

        result.fold(
            left => {
                expect(left).toBeNull();
            },
            right => {
                expect(right).toBe(message);
            },
        );
    });

    it('should be able get a left and right data when result is left using left and right functions', () => {
        const error = faker.lorem.sentence();
        const result: Either<string> = Left(new NotFoundFailure(error));

        expect(result.left).toBeInstanceOf(NotFoundFailure);
        expect(result.left.message).toBe(error);
        expect(result.right).toBeNull();
    });

    it('should be able get a right and left data when result is right using right and left functions', () => {
        const message = faker.lorem.sentence();
        const result: Either<string> = Right(message);

        expect(result.right).toBe(message);
        expect(result.left).toBeNull();
    });
});
