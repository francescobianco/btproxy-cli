.class public final Lcom/google/api/services/fitness/model/DataTypeField;
.super Lcom/google/api/client/json/GenericJson;
.source "DataTypeField.java"


# instance fields
.field private format:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private optional:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/DataTypeField;->clone()Lcom/google/api/services/fitness/model/DataTypeField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/DataTypeField;->clone()Lcom/google/api/services/fitness/model/DataTypeField;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/DataTypeField;
    .registers 2

    .line 119
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/DataTypeField;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/DataTypeField;->clone()Lcom/google/api/services/fitness/model/DataTypeField;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataTypeField;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataTypeField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptional()Ljava/lang/Boolean;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataTypeField;->optional:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/DataTypeField;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/DataTypeField;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/DataTypeField;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/DataTypeField;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/DataTypeField;
    .registers 3

    .line 114
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/DataTypeField;

    return-object p1
.end method

.method public setFormat(Ljava/lang/String;)Lcom/google/api/services/fitness/model/DataTypeField;
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataTypeField;->format:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/fitness/model/DataTypeField;
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataTypeField;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setOptional(Ljava/lang/Boolean;)Lcom/google/api/services/fitness/model/DataTypeField;
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataTypeField;->optional:Ljava/lang/Boolean;

    return-object p0
.end method
