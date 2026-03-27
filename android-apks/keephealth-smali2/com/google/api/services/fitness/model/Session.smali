.class public final Lcom/google/api/services/fitness/model/Session;
.super Lcom/google/api/client/json/GenericJson;
.source "Session.java"


# instance fields
.field private activeTimeMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private activityType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private application:Lcom/google/api/services/fitness/model/Application;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private endTimeMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private modifiedTimeMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private startTimeMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/Session;->clone()Lcom/google/api/services/fitness/model/Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/Session;->clone()Lcom/google/api/services/fitness/model/Session;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/fitness/model/Session;
    .registers 2

    .line 268
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/fitness/model/Session;

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
    invoke-virtual {p0}, Lcom/google/api/services/fitness/model/Session;->clone()Lcom/google/api/services/fitness/model/Session;

    move-result-object v0

    return-object v0
.end method

.method public getActiveTimeMillis()Ljava/lang/Long;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Session;->activeTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getActivityType()Ljava/lang/Integer;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Session;->activityType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getApplication()Lcom/google/api/services/fitness/model/Application;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Session;->application:Lcom/google/api/services/fitness/model/Application;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Session;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTimeMillis()Ljava/lang/Long;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Session;->endTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Session;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTimeMillis()Ljava/lang/Long;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Session;->modifiedTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Session;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeMillis()Ljava/lang/Long;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/google/api/services/fitness/model/Session;->startTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/Session;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/Session;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/fitness/model/Session;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/Session;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/fitness/model/Session;
    .registers 3

    .line 263
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/model/Session;

    return-object p1
.end method

.method public setActiveTimeMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/Session;
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Session;->activeTimeMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public setActivityType(Ljava/lang/Integer;)Lcom/google/api/services/fitness/model/Session;
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Session;->activityType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setApplication(Lcom/google/api/services/fitness/model/Application;)Lcom/google/api/services/fitness/model/Session;
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Session;->application:Lcom/google/api/services/fitness/model/Application;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/services/fitness/model/Session;
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Session;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setEndTimeMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/Session;
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Session;->endTimeMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/fitness/model/Session;
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Session;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setModifiedTimeMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/Session;
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Session;->modifiedTimeMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/fitness/model/Session;
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Session;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setStartTimeMillis(Ljava/lang/Long;)Lcom/google/api/services/fitness/model/Session;
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/google/api/services/fitness/model/Session;->startTimeMillis:Ljava/lang/Long;

    return-object p0
.end method
