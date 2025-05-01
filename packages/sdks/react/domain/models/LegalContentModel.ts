import { Json } from "../../data/contracts/http_client_contract";

export interface LegalContentModelProps {
    id: number;
    type: string;
    description: string;
    descriptionHtml: string;
    createdAt: string;
    updatedAt: string;
}

export class LegalContentModel implements LegalContentModelProps {
    id: number;
    type: string;
    description: string;
    descriptionHtml: string;
    createdAt: string;
    updatedAt: string;

    constructor(data: LegalContentModelProps) {
        this.id = data.id;
        this.type = data.type;
        this.description = data.description;
        this.descriptionHtml = data.descriptionHtml;
        this.createdAt = data.createdAt;
        this.updatedAt = data.updatedAt;
    }

    static fromMap(data: Json): LegalContentModel {
        return new LegalContentModel({
            id: data.id,
            type: data.type,
            description: data.description,
            descriptionHtml: data.description_html,
            createdAt: data.created_at,
            updatedAt: data.updated_at,
        });
    }
}
