.class public final Lcom/google/api/services/fitness/model/Value;
.super Lcom/google/api/client/json/GenericJson;
.source "Value.java"


# instance fields
.field private fpVal:Ljava/lang/Double;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private intVal:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private mapVal:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/ValueMapValEntry;",
            ">;"
        }
    .end annotation
.end field

.field private stringVal:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/Value;->clone()Lcom/google/api/services/fitness/model/Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/Value;->clone()Lcom/google/api/services/fitness/model/Value;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/Value;
    .registers 2

    .line 154
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/Value;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/Value;->clone()Lcom/google/api/services/fitness/model/Value;

    move-result-object v0

    return-object v0
.end method

.method public getFpVal()Ljava/lang/Double;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Value;->fpVal:Ljava/lang/Double;

    return-object v0
.end method

.method public getIntVal()Ljava/lang/Integer;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Value;->intVal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMapVal()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/ValueMapValEntry;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Value;->mapVal:Ljava/util/List;

    return-object v0
.end method

.method public getStringVal()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Value;->stringVal:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/Value;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/Value;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/Value;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/Value;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/Value;
    .registers 3

    .line 149
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/Value;

    return-object p1
.end method

.method public setFpVal(Ljava/lang/Double;)Lcom/google/api/services/fitness/model/Value;
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Value;->fpVal:Ljava/lang/Double;

    return-object p0
.end method

.method public setIntVal(Ljava/lang/Integer;)Lcom/google/api/services/fitness/model/Value;
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Value;->intVal:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMapVal(Ljava/util/List;)Lcom/google/api/services/fitness/model/Value;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/fitness/model/ValueMapValEntry;",
            ">;)",
            "Lcom/google/api/services/fitness/model/Value;"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Value;->mapVal:Ljava/util/List;

    return-object p0
.end method

.method public setStringVal(Ljava/lang/String;)Lcom/google/api/services/fitness/model/Value;
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Value;->stringVal:Ljava/lang/String;

    return-object p0
.end method
