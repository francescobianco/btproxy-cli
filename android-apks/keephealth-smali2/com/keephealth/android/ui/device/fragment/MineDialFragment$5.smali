.class Lcom/keephealth/android/ui/device/fragment/MineDialFragment$5;
.super Ljava/lang/Object;
.source "MineDialFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/fragment/MineDialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V
    .registers 2

    .line 535
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$5;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 538
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$5;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$5;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requestDataTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1700(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 539
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$5;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$602(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Z)Z

    const/16 v0, 0x2707

    .line 540
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    return-void
.end method
