.class public final synthetic Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1;

.field public final synthetic f$1:Lcom/keephealth/android/model/bean/DeviceEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1;Lcom/keephealth/android/model/bean/DeviceEntry;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1$$ExternalSyntheticLambda0;->f$1:Lcom/keephealth/android/model/bean/DeviceEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1$$ExternalSyntheticLambda0;->f$1:Lcom/keephealth/android/model/bean/DeviceEntry;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1;->lambda$run$0$com-keephealth-android-ui-device-fragment-RecommendFragment$7$1(Lcom/keephealth/android/model/bean/DeviceEntry;)V

    return-void
.end method
