.class public Lcom/keephealth/android/views/dialog/BaseDialog;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected dialog:Landroid/app/Dialog;

.field protected mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/BaseDialog;->mContext:Landroid/content/Context;

    .line 19
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/keephealth/android/views/dialog/BaseDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f110119

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/keephealth/android/views/dialog/BaseDialog;->dialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/BaseDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 47
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/BaseDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 53
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/BaseDialog;->dismiss()V

    return-void
.end method

.method protected setDialogLocation(Landroid/content/Context;Landroid/app/Dialog;)V
    .registers 5

    .line 24
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 27
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    const/4 v1, 0x0

    .line 28
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 29
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 p1, -0x1

    .line 31
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p1, -0x2

    .line 32
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 34
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public show()V
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/BaseDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_f

    .line 41
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/BaseDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_f
    return-void
.end method
