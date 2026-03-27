.class Lcom/tamic/novate/Novate$5;
.super Ljava/lang/Object;
.source "Novate.java"

# interfaces
.implements Lrx/Observable$Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;
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

    .line 1085
    iput-object p1, p0, Lcom/tamic/novate/Novate$5;->this$0:Lcom/tamic/novate/Novate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1089
    check-cast p1, Lrx/Observable;

    new-instance v0, Lcom/tamic/novate/Novate$HttpResponseFunc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tamic/novate/Novate$HttpResponseFunc;-><init>(Lcom/tamic/novate/Novate$1;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->onErrorResumeNext(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
