.class public final synthetic Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;

.field public final synthetic f$1:Lcom/keephealth/android/views/wheel/NewWheelView2;

.field public final synthetic f$2:Lcom/keephealth/android/views/wheel/NewWheelView2;

.field public final synthetic f$3:Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda7;->f$0:Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;

    iput-object p2, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda7;->f$1:Lcom/keephealth/android/views/wheel/NewWheelView2;

    iput-object p3, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda7;->f$2:Lcom/keephealth/android/views/wheel/NewWheelView2;

    iput-object p4, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda7;->f$3:Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda7;->f$0:Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;

    iget-object v1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda7;->f$1:Lcom/keephealth/android/views/wheel/NewWheelView2;

    iget-object v2, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda7;->f$2:Lcom/keephealth/android/views/wheel/NewWheelView2;

    iget-object v3, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda7;->f$3:Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/keephealth/android/util/DialogHelperNew;->lambda$showWheelTimeDialog$20(Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;Landroid/view/View;)V

    return-void
.end method
