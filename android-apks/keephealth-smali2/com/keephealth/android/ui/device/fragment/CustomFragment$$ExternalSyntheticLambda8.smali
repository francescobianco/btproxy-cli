.class public final synthetic Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/keephealth/android/views/gallery/SelectOptions$Callback;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda8;->f$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    return-void
.end method


# virtual methods
.method public final doSelected([Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda8;->f$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->lambda$requestPermissionsSuccess$5$com-keephealth-android-ui-device-fragment-CustomFragment([Ljava/lang/String;)V

    return-void
.end method
