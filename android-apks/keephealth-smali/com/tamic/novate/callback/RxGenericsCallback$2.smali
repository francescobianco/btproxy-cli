.class Lcom/tamic/novate/callback/RxGenericsCallback$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "RxGenericsCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/callback/RxGenericsCallback;->transform(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/callback/RxGenericsCallback;


# direct methods
.method constructor <init>(Lcom/tamic/novate/callback/RxGenericsCallback;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/tamic/novate/callback/RxGenericsCallback$2;->this$0:Lcom/tamic/novate/callback/RxGenericsCallback;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
