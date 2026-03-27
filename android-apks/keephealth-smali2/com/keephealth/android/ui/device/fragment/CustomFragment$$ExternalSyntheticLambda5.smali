.class public final synthetic Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda5;->f$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda5;->f$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->lambda$takePhoto$0$com-keephealth-android-ui-device-fragment-CustomFragment(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
