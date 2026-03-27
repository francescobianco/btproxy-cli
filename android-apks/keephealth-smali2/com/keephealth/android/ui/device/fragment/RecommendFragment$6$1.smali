.class Lcom/keephealth/android/ui/device/fragment/RecommendFragment$6$1;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/RecommendFragment$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$6;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$6;)V
    .registers 2

    .line 638
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$6$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 641
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$6$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$6;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDialToDevice()V
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1500(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V

    return-void
.end method
