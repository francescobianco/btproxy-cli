.class public final Lcom/google/api/services/fitness/model/DataType;
.super Lcom/google/api/client/json/GenericJson;
.source "DataType.java"


# instance fields
.field private field:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/DataTypeField;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/DataType;->clone()Lcom/google/api/services/fitness/model/DataType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/DataType;->clone()Lcom/google/api/services/fitness/model/DataType;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/DataType;
    .registers 2

    .line 94
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/DataType;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/DataType;->clone()Lcom/google/api/services/fitness/model/DataType;

    move-result-object v0

    return-object v0
.end method

.method public getField()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/DataTypeField;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataType;->field:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/google/api/services/fitness/model/DataType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/DataType;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/DataType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/DataType;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/DataType;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/DataType;
    .registers 3

    .line 89
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/DataType;

    return-object p1
.end method

.method public setField(Ljava/util/List;)Lcom/google/api/services/fitness/model/DataType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/DataTypeField;",
            ">;)",
            "Lcom/google/api/services/fitness/model/DataType;"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataType;->field:Ljava/util/List;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/fitness/model/DataType;
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/google/api/services/fitness/model/DataType;->name:Ljava/lang/String;

    return-object p0
.end method
