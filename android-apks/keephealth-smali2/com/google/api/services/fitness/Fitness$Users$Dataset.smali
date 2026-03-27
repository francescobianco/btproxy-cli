.class public Lcom/google/api/services/fitness/Fitness$Users$Dataset;
.super Ljava/lang/Object;
.source "Fitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fitness/Fitness$Users;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Dataset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/api/services/fitness/Fitness$Users;


# direct methods
.method public constructor <init>(Lcom/google/api/services/fitness/Fitness$Users;)V
    .registers 2

    .line 1599
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Dataset;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aggregate(Ljava/lang/String;Lcom/google/api/services/fitness/model/AggregateRequest;)Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1617
    new-instance v0, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/fitness/Fitness$Users$Dataset$Aggregate;-><init>(Lcom/google/api/services/fitness/Fitness$Users$Dataset;Ljava/lang/String;Lcom/google/api/services/fitness/model/AggregateRequest;)V

    .line 1618
    iget-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users$Dataset;->this$1:Lcom/google/api/services/fitness/Fitness$Users;

    iget-object p1, p1, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    invoke-virtual {p1, v0}, Lcom/google/api/services/fitness/Fitness;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method
