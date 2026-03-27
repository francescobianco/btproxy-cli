.class Lcom/tamic/novate/Novate$OndoTransformer;
.super Ljava/lang/Object;
.source "Novate.java"

# interfaces
.implements Lrx/Observable$Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tamic/novate/Novate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OndoTransformer"
.end annotation


# instance fields
.field private callback:Lcom/tamic/novate/callback/ResponseCallback;

.field private tag:Ljava/lang/Object;

.field final synthetic this$0:Lcom/tamic/novate/Novate;


# direct methods
.method public constructor <init>(Lcom/tamic/novate/Novate;Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V
    .registers 4

    .line 1020
    iput-object p1, p0, Lcom/tamic/novate/Novate$OndoTransformer;->this$0:Lcom/tamic/novate/Novate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput-object p2, p0, Lcom/tamic/novate/Novate$OndoTransformer;->tag:Ljava/lang/Object;

    .line 1022
    iput-object p3, p0, Lcom/tamic/novate/Novate$OndoTransformer;->callback:Lcom/tamic/novate/callback/ResponseCallback;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1027
    check-cast p1, Lrx/Observable;

    new-instance v0, Lcom/tamic/novate/Novate$OndoTransformer$1;

    invoke-direct {v0, p0}, Lcom/tamic/novate/Novate$OndoTransformer$1;-><init>(Lcom/tamic/novate/Novate$OndoTransformer;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
