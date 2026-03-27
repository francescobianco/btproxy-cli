.class public abstract Lcom/tamic/novate/callback/RxResultCallback;
.super Lcom/tamic/novate/callback/RxGenericsCallback;
.source "RxResultCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tamic/novate/callback/RxGenericsCallback<",
        "TT;",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/tamic/novate/callback/RxGenericsCallback;-><init>()V

    return-void
.end method
