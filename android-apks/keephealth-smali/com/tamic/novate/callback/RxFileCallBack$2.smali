.class Lcom/tamic/novate/callback/RxFileCallBack$2;
.super Ljava/lang/Object;
.source "RxFileCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/callback/RxFileCallBack;->onNext(Ljava/lang/Object;Lokhttp3/Call;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/callback/RxFileCallBack;

.field final synthetic val$response:Ljava/io/File;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tamic/novate/callback/RxFileCallBack;Ljava/lang/Object;Ljava/io/File;)V
    .registers 4

    .line 125
    iput-object p1, p0, Lcom/tamic/novate/callback/RxFileCallBack$2;->this$0:Lcom/tamic/novate/callback/RxFileCallBack;

    iput-object p2, p0, Lcom/tamic/novate/callback/RxFileCallBack$2;->val$tag:Ljava/lang/Object;

    iput-object p3, p0, Lcom/tamic/novate/callback/RxFileCallBack$2;->val$response:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/tamic/novate/callback/RxFileCallBack$2;->this$0:Lcom/tamic/novate/callback/RxFileCallBack;

    iget-object v1, p0, Lcom/tamic/novate/callback/RxFileCallBack$2;->val$tag:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tamic/novate/callback/RxFileCallBack$2;->val$response:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/tamic/novate/callback/RxFileCallBack;->onNext(Ljava/lang/Object;Ljava/io/File;)V

    return-void
.end method
