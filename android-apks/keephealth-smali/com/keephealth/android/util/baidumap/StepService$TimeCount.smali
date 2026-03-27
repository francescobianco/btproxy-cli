.class Lcom/keephealth/android/util/baidumap/StepService$TimeCount;
.super Landroid/os/CountDownTimer;
.source "StepService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/baidumap/StepService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeCount"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/baidumap/StepService;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/util/baidumap/StepService;JJ)V
    .registers 6

    .line 307
    iput-object p1, p0, Lcom/keephealth/android/util/baidumap/StepService$TimeCount;->this$0:Lcom/keephealth/android/util/baidumap/StepService;

    .line 308
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService$TimeCount;->this$0:Lcom/keephealth/android/util/baidumap/StepService;

    # getter for: Lcom/keephealth/android/util/baidumap/StepService;->time:Lcom/keephealth/android/util/baidumap/StepService$TimeCount;
    invoke-static {v0}, Lcom/keephealth/android/util/baidumap/StepService;->access$000(Lcom/keephealth/android/util/baidumap/StepService;)Lcom/keephealth/android/util/baidumap/StepService$TimeCount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/baidumap/StepService$TimeCount;->cancel()V

    .line 315
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService$TimeCount;->this$0:Lcom/keephealth/android/util/baidumap/StepService;

    # invokes: Lcom/keephealth/android/util/baidumap/StepService;->startTimeCount()V
    invoke-static {v0}, Lcom/keephealth/android/util/baidumap/StepService;->access$100(Lcom/keephealth/android/util/baidumap/StepService;)V

    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method
