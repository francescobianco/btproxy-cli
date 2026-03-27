.class Lcom/keephealth/android/workmanager/AssistWorker$2;
.super Ljava/lang/Object;
.source "AssistWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/workmanager/AssistWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/workmanager/AssistWorker;


# direct methods
.method constructor <init>(Lcom/keephealth/android/workmanager/AssistWorker;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$2;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/keephealth/android/workmanager/AssistWorker$2;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    iget-object v0, v0, Lcom/keephealth/android/workmanager/AssistWorker;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/workmanager/AssistWorker$2;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    iget-object v0, v0, Lcom/keephealth/android/workmanager/AssistWorker;->handler:Landroid/os/Handler;

    const/16 v1, 0x156

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_f
    return-void
.end method
