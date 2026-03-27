.class public Lcom/tamic/novate/exception/FormatException;
.super Ljava/lang/RuntimeException;
.source "FormatException.java"


# instance fields
.field public code:I

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v0, -0xc8

    .line 26
    iput v0, p0, Lcom/tamic/novate/exception/FormatException;->code:I

    .line 27
    const-string v0, "\u670d\u52a1\u7aef\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u5f02\u5e38"

    iput-object v0, p0, Lcom/tamic/novate/exception/FormatException;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/tamic/novate/exception/FormatException;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/tamic/novate/exception/FormatException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/tamic/novate/exception/FormatException;->code:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/tamic/novate/exception/FormatException;->message:Ljava/lang/String;

    return-void
.end method
