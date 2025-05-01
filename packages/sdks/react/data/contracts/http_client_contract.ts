import { EitherPromise } from "../../core/either/either";

export type Json = Record<string, any>;

export class PaginatedData<T> {
    data: T[];
    meta: Meta;

    constructor(data: T[], meta: Meta) {
        this.data = data;
        this.meta = meta;
    }

    static fromMap<T>(data: Json): PaginatedData<T> {
        return new PaginatedData(data.data, data.meta);
    }
}

export type Meta = {
    currentPage: number;
    lastPage: number;
    perPage: number;
    total: number;
}

export abstract class HttpClientContract {
    delete: (url: string) => EitherPromise<boolean>;

    get: (url: string, queryParams?: Json) => EitherPromise<Json>;

    index: (url: string, queryParams?: Json, isPaginated?: boolean) => EitherPromise<Json[] | PaginatedData<Json[]>>;

    patch: (url: string, data: Json) => EitherPromise<boolean>;

    post: (url: string, data: Json) => EitherPromise<Json>;

    put: (url: string, data: Json) => EitherPromise<boolean>;
}
