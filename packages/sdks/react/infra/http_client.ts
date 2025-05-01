import { Either, EitherPromise, Left, Right } from "../core/either/either";
import { UnauthenticatedFailure } from "../core/failures/unauthenticated_failure";
import { NotFoundFailure } from "../core/failures/not_found_failure";
import { UnexpectedFailure } from "../core/failures/unexpected_failure";
import { HttpClientContract, Json, PaginatedData } from "../data/contracts/http_client_contract";
import axios, { AxiosInstance } from "axios";
import dotenv from 'dotenv';

dotenv.config();

export class HttpClient implements HttpClientContract  {
    private _client: AxiosInstance;
    
    constructor() {
        const baseUrl = process.env.API_URL;
        if (!baseUrl) {
            throw new Error('API_URL environment variable is not defined');
        }

        this._client = axios.create({
            baseURL: baseUrl,
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Accept-Language': 'pt-BR',
            },
            validateStatus: (_status) => true,
            timeout: 30000,
        });
    }

    async get(url: string, queryParams?: Json): EitherPromise<Json> {
        const response = await this._client.get(url, {
            params: queryParams,
        });

        return this.parseResponse<Json>({
            response,
            isPaginated: false,
        });
    }

    delete(url: string): EitherPromise<boolean> {
        throw new Error('Not implemented');
    }

    index(url: string, queryParams?: Json, isPaginated?: boolean): EitherPromise<Json[] | PaginatedData<Json[]>> {
        throw new Error('Not implemented');
    }

    patch(url: string, data: Json): EitherPromise<boolean> {
        throw new Error('Not implemented');
    }

    post(url: string, data: Json): EitherPromise<Json> {
        throw new Error('Not implemented');
    }

    put(url: string, data: Json): EitherPromise<boolean> {
        throw new Error('Not implemented');
    }

    private parseResponse<T>({
        response,
        isPaginated,
    }: {
        response: Json,
        isPaginated: boolean,
    }): Either<T> {
        switch (response.statusCode) {
          case 204:
            return Right<T>(true as T);
          case 200:
            return !isPaginated
                ? Right<T>(response.data as T)
                : Right<T>(PaginatedData.fromMap(response.data) as T);
          case 201:
            return Right<T>(response.data as T);
          case 401:
            return Left<T>(
              new UnauthenticatedFailure(response.data['message']),
            );
          case 404:
            return Left<T>(new NotFoundFailure(response.data['message']));
          default:
            return Left<T>(new UnexpectedFailure(response.data['message']));
        }
    }
}