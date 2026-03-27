.class Lcom/tamic/novate/Novate$2;
.super Ljava/lang/Object;
.source "Novate.java"

# interfaces
.implements Lrx/Observable$Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tamic/novate/Novate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/Novate;


# direct methods
.method constructor <init>(Lcom/tamic/novate/Novate;)V
    .registers 2

    .line 1000
    iput-object p1, p0, Lcom/tamic/novate/Novate$2;->this$0:Lcom/tamic/novate/Novate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1004
    check-cast p1, Lrx/Observable;

    new-instance v0, Lcom/tamic/novate/Novate$2$1;

    invoke-direct {v0, p0}, Lcom/tamic/novate/Novate$2$1;-><init>(Lcom/tamic/novate/Novate$2;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
