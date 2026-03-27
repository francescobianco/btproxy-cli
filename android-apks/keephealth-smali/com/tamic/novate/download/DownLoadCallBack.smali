.class public abstract Lcom/tamic/novate/download/DownLoadCallBack;
.super Ljava/lang/Object;
.source "DownLoadCallBack.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onCompleted()V
    .registers 1

    return-void
.end method

.method public abstract onError(Lcom/tamic/novate/Throwable;)V
.end method

.method public onProgress(Ljava/lang/String;IJJ)V
    .registers 7

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public abstract onSucess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method
