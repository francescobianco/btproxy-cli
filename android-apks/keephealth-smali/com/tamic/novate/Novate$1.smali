.class Lcom/tamic/novate/Novate$1;
.super Ljava/util/HashMap;
.source "Novate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tamic/novate/Novate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Object;",
        "Lrx/Observable<",
        "Lokhttp3/ResponseBody;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/Novate;


# direct methods
.method constructor <init>(Lcom/tamic/novate/Novate;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/tamic/novate/Novate$1;->this$0:Lcom/tamic/novate/Novate;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method
