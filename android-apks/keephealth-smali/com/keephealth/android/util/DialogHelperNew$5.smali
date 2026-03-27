.class Lcom/keephealth/android/util/DialogHelperNew$5;
.super Ljava/lang/Object;
.source "DialogHelperNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/DialogHelperNew;->showWheelWeightDialog(Landroid/content/Context;ILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Lcom/keephealth/android/views/dialog/WheelViewDialog;

.field final synthetic val$listener:Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;

.field final synthetic val$startf:I

.field final synthetic val$wv_weight:Lcom/keephealth/android/views/wheel/NewWheelView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;ILcom/keephealth/android/views/dialog/WheelViewDialog;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1446
    iput-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$5;->val$listener:Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;

    iput-object p2, p0, Lcom/keephealth/android/util/DialogHelperNew$5;->val$wv_weight:Lcom/keephealth/android/views/wheel/NewWheelView;

    iput p3, p0, Lcom/keephealth/android/util/DialogHelperNew$5;->val$startf:I

    iput-object p4, p0, Lcom/keephealth/android/util/DialogHelperNew$5;->val$dialog:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1449
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$5;->val$listener:Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;

    if-eqz p1, :cond_11

    .line 1450
    iget-object v0, p0, Lcom/keephealth/android/util/DialogHelperNew$5;->val$wv_weight:Lcom/keephealth/android/views/wheel/NewWheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/util/DialogHelperNew$5;->val$startf:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;->onSelect(III)V

    .line 1452
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$5;->val$dialog:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->dismiss()V

    return-void
.end method
