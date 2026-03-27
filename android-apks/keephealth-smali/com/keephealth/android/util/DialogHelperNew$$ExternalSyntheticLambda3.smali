.class public final synthetic Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;

.field public final synthetic f$1:Lcom/keephealth/android/views/wheel/NewWheelView;

.field public final synthetic f$2:Lcom/keephealth/android/views/dialog/WheelViewDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda3;->f$0:Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;

    iput-object p2, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda3;->f$1:Lcom/keephealth/android/views/wheel/NewWheelView;

    iput-object p3, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda3;->f$2:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda3;->f$0:Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;

    iget-object v1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda3;->f$1:Lcom/keephealth/android/views/wheel/NewWheelView;

    iget-object v2, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda3;->f$2:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    invoke-static {v0, v1, v2, p1}, Lcom/keephealth/android/util/DialogHelperNew;->lambda$showWheelVibrateDialog$47(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;Landroid/view/View;)V

    return-void
.end method
