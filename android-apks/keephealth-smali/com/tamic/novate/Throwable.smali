.class public Lcom/tamic/novate/Throwable;
.super Ljava/lang/Exception;
.source "Throwable.java"


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 3

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 31
    iput p2, p0, Lcom/tamic/novate/Throwable;->code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;ILjava/lang/String;)V
    .registers 4

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 36
    iput p2, p0, Lcom/tamic/novate/Throwable;->code:I

    .line 37
    iput-object p3, p0, Lcom/tamic/novate/Throwable;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/tamic/novate/Throwable;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/tamic/novate/Throwable;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/tamic/novate/Throwable;->code:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/tamic/novate/Throwable;->message:Ljava/lang/String;

    return-void
.end method
