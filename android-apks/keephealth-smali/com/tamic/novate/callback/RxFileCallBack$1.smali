.class Lcom/tamic/novate/callback/RxFileCallBack$1;
.super Ljava/lang/Object;
.source "RxFileCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/callback/RxFileCallBack;->onNextFile(Lokhttp3/ResponseBody;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/callback/RxFileCallBack;

.field final synthetic val$finalProgress:I

.field final synthetic val$finalSum:J

.field final synthetic val$total:J


# direct methods
.method constructor <init>(Lcom/tamic/novate/callback/RxFileCallBack;IJJ)V
    .registers 7

    .line 107
    iput-object p1, p0, Lcom/tamic/novate/callback/RxFileCallBack$1;->this$0:Lcom/tamic/novate/callback/RxFileCallBack;

    iput p2, p0, Lcom/tamic/novate/callback/RxFileCallBack$1;->val$finalProgress:I

    iput-wide p3, p0, Lcom/tamic/novate/callback/RxFileCallBack$1;->val$finalSum:J

    iput-wide p5, p0, Lcom/tamic/novate/callback/RxFileCallBack$1;->val$total:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 110
    iget-object v0, p0, Lcom/tamic/novate/callback/RxFileCallBack$1;->this$0:Lcom/tamic/novate/callback/RxFileCallBack;

    iget-object v1, v0, Lcom/tamic/novate/callback/RxFileCallBack;->tag:Ljava/lang/Object;

    iget v2, p0, Lcom/tamic/novate/callback/RxFileCallBack$1;->val$finalProgress:I

    int-to-float v2, v2

    iget-wide v3, p0, Lcom/tamic/novate/callback/RxFileCallBack$1;->val$finalSum:J

    iget-wide v5, p0, Lcom/tamic/novate/callback/RxFileCallBack$1;->val$total:J

    invoke-virtual/range {v0 .. v6}, Lcom/tamic/novate/callback/RxFileCallBack;->onProgress(Ljava/lang/Object;FJJ)V

    return-void
.end method
