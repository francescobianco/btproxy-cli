.class public Lcom/tamic/novate/exception/ServerException;
.super Ljava/lang/RuntimeException;
.source "ServerException.java"


# instance fields
.field public code:I

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 30
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    iput p1, p0, Lcom/tamic/novate/exception/ServerException;->code:I

    .line 32
    iput-object p2, p0, Lcom/tamic/novate/exception/ServerException;->message:Ljava/lang/String;

    return-void
.end method
