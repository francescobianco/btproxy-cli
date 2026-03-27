.class public Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;
.super Ljava/lang/Object;
.source "Fitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fitness/Fitness$Users$DataSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Datasets"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;,
        Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;,
        Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/api/services/fitness/Fitness$Users$DataSources;


# direct methods
.method public constructor <init>(Lcom/google/api/services/fitness/Fitness$Users$DataSources;)V
    .registers 2

    .line 963
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;->this$2:Lcom/google/api/services/fitness/Fitness$Users$DataSources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 986
    new-instance v0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Delete;-><init>(Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;->this$2:Lcom/google/api/services/fitness/Fitness$Users$DataSources;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    invoke-virtual {p1, v0}, Lcom/google/api/services/fitness/Fitness;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1181
    new-instance v0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Get;-><init>(Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    iget-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;->this$2:Lcom/google/api/services/fitness/Fitness$Users$DataSources;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    invoke-virtual {p1, v0}, Lcom/google/api/services/fitness/Fitness;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public patch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/fitness/model/Dataset;)Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1407
    new-instance v6, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets$Patch;-><init>(Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/fitness/model/Dataset;)V

    .line 1408
    iget-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$DataSources$Datasets;->this$2:Lcom/google/api/services/fitness/Fitness$Users$DataSources;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users$DataSources;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    invoke-virtual {p1, v6}, Lcom/google/api/services/fitness/Fitness;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v6
.end method
