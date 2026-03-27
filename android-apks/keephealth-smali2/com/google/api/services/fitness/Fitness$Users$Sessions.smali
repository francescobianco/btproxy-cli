.class public Lcom/google/api/services/fitness/Fitness$Users$Sessions;
.super Ljava/lang/Object;
.source "Fitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fitness/Fitness$Users;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sessions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;,
        Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;,
        Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/api/services/fitness/Fitness$Users;


# direct methods
.method public constructor <init>(Lcom/google/api/services/fitness/Fitness$Users;)V
    .registers 2

    .line 1732
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1748
    new-instance v0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Delete;-><init>(Lcom/google/api/services/fitness/Fitness$Users$Sessions;Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    iget-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    invoke-virtual {p1, v0}, Lcom/google/api/services/fitness/Fitness;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1886
    new-instance v0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$List;-><init>(Lcom/google/api/services/fitness/Fitness$Users$Sessions;Ljava/lang/String;)V

    .line 1887
    iget-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    invoke-virtual {p1, v0}, Lcom/google/api/services/fitness/Fitness;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/fitness/model/Session;)Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2096
    new-instance v0, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/fitness/Fitness$Users$Sessions$Update;-><init>(Lcom/google/api/services/fitness/Fitness$Users$Sessions;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/fitness/model/Session;)V

    .line 2097
    iget-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Sessions;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    invoke-virtual {p1, v0}, Lcom/google/api/services/fitness/Fitness;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method
