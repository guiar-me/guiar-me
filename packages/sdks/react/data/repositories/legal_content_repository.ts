import { EitherPromise, Left, Right } from "../../core/either/either";
import { HttpClientContract } from "../contracts/http_client_contract";
import { LegalContentModel } from "../../domain/models/LegalContentModel";

export class LegalContentRepository {
    constructor(private readonly httpClient: HttpClientContract) {}

    async get(type: string): EitherPromise<LegalContentModel> {
        const response = await this.httpClient.get(`/legal-contents/${type}`);

        if (response.isLeft) {
            return Left(response.left);
        }

        return Right(LegalContentModel.fromMap(response.right));
    }
}