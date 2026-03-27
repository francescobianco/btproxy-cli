.class public final synthetic Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final onCustomClick(Landroid/view/View;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->lambda$onNormalBindViewHolder$1$com-keephealth-android-ui-device-adapter-RecommedAdapter(ILandroid/view/View;I)V

    return-void
.end method
