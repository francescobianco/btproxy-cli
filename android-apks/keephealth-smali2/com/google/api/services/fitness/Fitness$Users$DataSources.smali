.class public Lcom/google/api/services/fitness/Fitness$Users$DataSources;
.super Ljava/lang/Object;
.source "Fitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fitness/Fitness$Users;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataSources"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;,
        Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;,
        Lcom/google/api/services/fitness/Fitness$Users$DataSources$Patch;,
        Lcom/google/api/services/fitness/Fitness$Users$DataSources$List;,
        Lcom/google/api/services/fitness/Fitness$Users$DataSources$Get;,
        Lcom/google/api/services/fitness/Fitness$Users$DataSources$Delete;,
        Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/api/services/fitness/Fitness$Users;


# direct methods
.method public constructor <init>(Lcom/google/api/services/fitness/Fitness$Users;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/google/api/services/fitness/model/DataSource;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    new-instance v0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Create;-><init>(Lcom/google/api/services/fitness/Fitness$Users$DataSources;Ljava/lang/String;Lcom/google/api/services/fitness/model/DataSource;)V

    .line 181
    iget-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    invoke-virtual {p1, v0}, Lcom/google/api/services/fitness/Fitness;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public datasets()Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;
    .registers 2

    .line 957
    new-instance v0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;

    invoke-direct {v0, p0}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;-><init>(Lcom/google/api/services/fitness/Fitness$Users$DataSources;)V

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Delete;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    new-instance v0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Delete;-><init>(Lcom/google/api/services/fitness/Fitness$Users$DataSources;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    invoke-virtual {p1, v0}, Lcom/google/api/services/fitness/Fitness;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Get;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    new-instance v0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Get;-><init>(Lcom/google/api/services/fitness/Fitness$Users$DataSources;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    invoke-virtual {p1, v0}, Lcom/google/api/services/fitness/Fitness;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    new-instance v0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$List;-><init>(Lcom/google/api/services/fitness/Fitness$Users$DataSources;Ljava/lang/String;)V

    .line 553
    iget-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    invoke-virtual {p1, v0}, Lcom/google/api/services/fitness/Fitness;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public patch(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/fitness/model/DataSource;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Patch;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    new-instance v0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Patch;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Patch;-><init>(Lcom/google/api/services/fitness/Fitness$Users$DataSources;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/fitness/model/DataSource;)V

    .line 697
    iget-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    invoke-virtual {p1, v0}, Lcom/google/api/services/fitness/Fitness;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/fitness/model/DataSource;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 827
    new-instance v0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Update;-><init>(Lcom/google/api/services/fitness/Fitness$Users$DataSources;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/fitness/model/DataSource;)V

    .line 828
    iget-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    invoke-virtual {p1, v0}, Lcom/google/api/services/fitness/Fitness;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method
