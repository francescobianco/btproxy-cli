.class Lcom/keephealth/android/views/UpdateView$1;
.super Landroid/os/Handler;
.source "UpdateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/UpdateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/UpdateView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/UpdateView;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/keephealth/android/views/UpdateView$1;->this$0:Lcom/keephealth/android/views/UpdateView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_42

    .line 100
    :cond_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/views/UpdateView$1;->this$0:Lcom/keephealth/android/views/UpdateView;

    iget-object v0, v0, Lcom/keephealth/android/views/UpdateView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/views/UpdateView$1;->this$0:Lcom/keephealth/android/views/UpdateView;

    iget-object v0, v0, Lcom/keephealth/android/views/UpdateView;->mProgressTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_42

    .line 104
    iget-object p1, p0, Lcom/keephealth/android/views/UpdateView$1;->this$0:Lcom/keephealth/android/views/UpdateView;

    iget-object p1, p1, Lcom/keephealth/android/views/UpdateView;->mProgressTv:Landroid/widget/TextView;

    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_42

    .line 97
    :cond_3b
    iget-object p1, p0, Lcom/keephealth/android/views/UpdateView$1;->this$0:Lcom/keephealth/android/views/UpdateView;

    iget-object p1, p1, Lcom/keephealth/android/views/UpdateView;->mCallback:Lcom/keephealth/android/views/UpdateView$DownLoadCallBack;

    invoke-interface {p1}, Lcom/keephealth/android/views/UpdateView$DownLoadCallBack;->downLoadSuccess()V

    :cond_42
    :goto_42
    return-void
.end method
