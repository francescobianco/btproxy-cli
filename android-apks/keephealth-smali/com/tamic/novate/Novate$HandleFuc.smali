.class Lcom/tamic/novate/Novate$HandleFuc;
.super Ljava/lang/Object;
.source "Novate.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tamic/novate/Novate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleFuc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lcom/tamic/novate/NovateResponse<",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/Novate;


# direct methods
.method private constructor <init>(Lcom/tamic/novate/Novate;)V
    .registers 2

    .line 1114
    iput-object p1, p0, Lcom/tamic/novate/Novate$HandleFuc;->this$0:Lcom/tamic/novate/Novate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/tamic/novate/NovateResponse;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tamic/novate/NovateResponse<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_13

    .line 1118
    invoke-virtual {p1}, Lcom/tamic/novate/NovateResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lcom/tamic/novate/NovateResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1125
    :cond_e
    invoke-virtual {p1}, Lcom/tamic/novate/NovateResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1119
    :cond_13
    new-instance p1, Lcom/google/gson/JsonParseException;

    const-string v0, "\u540e\u7aef\u6570\u636e\u4e0d\u5bf9"

    invoke-direct {p1, v0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1114
    check-cast p1, Lcom/tamic/novate/NovateResponse;

    invoke-virtual {p0, p1}, Lcom/tamic/novate/Novate$HandleFuc;->call(Lcom/tamic/novate/NovateResponse;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
