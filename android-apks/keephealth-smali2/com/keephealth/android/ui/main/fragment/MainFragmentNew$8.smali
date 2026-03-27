.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;
.super Ljava/lang/Object;
.source "MainFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V
    .registers 2

    .line 2413
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2416
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressIndex:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$900(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_5e

    const/4 v0, 0x0

    .line 2417
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRefreshing:Z

    .line 2418
    sput v0, Lcom/keephealth/android/app/AppApplication;->discoverService:I

    .line 2419
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # setter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutT:I
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$802(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;I)I

    .line 2420
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # setter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressIndex:I
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$902(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;I)I

    .line 2421
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    .line 2422
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2423
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2424
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/app/AppApplication;->setSysndata(Z)V

    .line 2425
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 2426
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    .line 2427
    :cond_48
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 2430
    :try_start_4f
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/StravaPostDataUtils;->CreateTimeBasedActivity(Landroid/content/Context;)V
    :try_end_58
    .catch Ljava/lang/IllegalStateException; {:try_start_4f .. :try_end_58} :catch_58

    :catch_58
    const/16 v0, 0x592

    .line 2435
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto :goto_cf

    .line 2437
    :cond_5e
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressIndex:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$900(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->nowProgress:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$1000(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)I

    move-result v1

    if-ge v0, v1, :cond_71

    .line 2438
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # operator++ for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressIndex:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$908(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)I

    .line 2440
    :cond_71
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressIndex:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$900(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_94

    .line 2441
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2442
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_cf

    .line 2443
    :cond_94
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressIndex:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$900(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)I

    move-result v0

    const/16 v1, 0x5f

    if-gt v0, v1, :cond_b7

    .line 2444
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2445
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_cf

    .line 2447
    :cond_b7
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2448
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_cf
    return-void
.end method
