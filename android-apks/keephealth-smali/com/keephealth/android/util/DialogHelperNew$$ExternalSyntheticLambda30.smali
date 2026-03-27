.class public final synthetic Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;

.field public final synthetic f$1:Lcom/keephealth/android/views/wheel/NewWheelView;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;II)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda30;->f$0:Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;

    iput-object p2, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda30;->f$1:Lcom/keephealth/android/views/wheel/NewWheelView;

    iput p3, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda30;->f$2:I

    iput p4, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda30;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda30;->f$0:Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;

    iget-object v1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda30;->f$1:Lcom/keephealth/android/views/wheel/NewWheelView;

    iget v2, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda30;->f$2:I

    iget v3, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda30;->f$3:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/keephealth/android/util/DialogHelperNew;->lambda$showWheelDialog$2(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;IILandroid/view/View;)V

    return-void
.end method
