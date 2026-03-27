.class public Lcom/google/api/services/fitness/Fitness$Users;
.super Ljava/lang/Object;
.source "Fitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fitness/Fitness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Users"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/fitness/Fitness$Users$Sessions;,
        Lcom/google/api/services/fitness/Fitness$Users$Dataset;,
        Lcom/google/api/services/fitness/Fitness$Users$DataSources;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/fitness/Fitness;


# direct methods
.method public constructor <init>(Lcom/google/api/services/fitness/Fitness;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/google/api/services/fitness/Fitness$Users;->this$0:Lcom/google/api/services/fitness/Fitness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataSources()Lcom/google/api/services/fitness/Fitness$Users$DataSources;
    .registers 2

    .line 153
    new-instance v0, Lcom/google/api/services/fitness/Fitness$Users$DataSources;

    invoke-direct {v0, p0}, Lcom/google/api/services/fitness/Fitness$Users$DataSources;-><init>(Lcom/google/api/services/fitness/Fitness$Users;)V

    return-object v0
.end method

.method public dataset()Lcom/google/api/services/fitness/Fitness$Users$Dataset;
    .registers 2

    .line 1593
    new-instance v0, Lcom/google/api/services/fitness/Fitness$Users$Dataset;

    invoke-direct {v0, p0}, Lcom/google/api/services/fitness/Fitness$Users$Dataset;-><init>(Lcom/google/api/services/fitness/Fitness$Users;)V

    return-object v0
.end method

.method public sessions()Lcom/google/api/services/fitness/Fitness$Users$Sessions;
    .registers 2

    .line 1726
    new-instance v0, Lcom/google/api/services/fitness/Fitness$Users$Sessions;

    invoke-direct {v0, p0}, Lcom/google/api/services/fitness/Fitness$Users$Sessions;-><init>(Lcom/google/api/services/fitness/Fitness$Users;)V

    return-object v0
.end method
