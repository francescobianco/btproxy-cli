.class Lcom/keephealth/android/views/ecg/EcgView$1;
.super Ljava/lang/Object;
.source "EcgView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/ecg/EcgView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/ecg/EcgView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/ecg/EcgView;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/keephealth/android/views/ecg/EcgView$1;->this$0:Lcom/keephealth/android/views/ecg/EcgView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 153
    :catch_0
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/keephealth/android/views/ecg/EcgView;->isRunning:Z

    if-eqz v0, :cond_29

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 155
    iget-object v2, p0, Lcom/keephealth/android/views/ecg/EcgView$1;->this$0:Lcom/keephealth/android/views/ecg/EcgView;

    # invokes: Lcom/keephealth/android/views/ecg/EcgView;->startDrawWave()V
    invoke-static {v2}, Lcom/keephealth/android/views/ecg/EcgView;->access$000(Lcom/keephealth/android/views/ecg/EcgView;)V

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgView$1;->this$0:Lcom/keephealth/android/views/ecg/EcgView;

    # getter for: Lcom/keephealth/android/views/ecg/EcgView;->sleepTime:I
    invoke-static {v0}, Lcom/keephealth/android/views/ecg/EcgView;->access$100(Lcom/keephealth/android/views/ecg/EcgView;)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 159
    :try_start_1d
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgView$1;->this$0:Lcom/keephealth/android/views/ecg/EcgView;

    # getter for: Lcom/keephealth/android/views/ecg/EcgView;->sleepTime:I
    invoke-static {v0}, Lcom/keephealth/android/views/ecg/EcgView;->access$100(Lcom/keephealth/android/views/ecg/EcgView;)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_28} :catch_0

    goto :goto_0

    :cond_29
    return-void
.end method
