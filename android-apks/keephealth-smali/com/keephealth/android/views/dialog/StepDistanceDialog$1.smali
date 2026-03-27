.class Lcom/keephealth/android/views/dialog/StepDistanceDialog$1;
.super Ljava/lang/Object;
.source "StepDistanceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/dialog/StepDistanceDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/dialog/StepDistanceDialog;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/dialog/StepDistanceDialog;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog$1;->this$0:Lcom/keephealth/android/views/dialog/StepDistanceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 87
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog$1;->this$0:Lcom/keephealth/android/views/dialog/StepDistanceDialog;

    iget-object v0, p1, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->tv_step:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/views/dialog/StepDistanceDialog;->title:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->access$002(Lcom/keephealth/android/views/dialog/StepDistanceDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog$1;->this$0:Lcom/keephealth/android/views/dialog/StepDistanceDialog;

    # getter for: Lcom/keephealth/android/views/dialog/StepDistanceDialog;->onSelectClick:Lcom/keephealth/android/views/dialog/StepDistanceDialog$OnSelectClick;
    invoke-static {p1}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->access$100(Lcom/keephealth/android/views/dialog/StepDistanceDialog;)Lcom/keephealth/android/views/dialog/StepDistanceDialog$OnSelectClick;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "title22:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog$1;->this$0:Lcom/keephealth/android/views/dialog/StepDistanceDialog;

    # getter for: Lcom/keephealth/android/views/dialog/StepDistanceDialog;->title:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->access$000(Lcom/keephealth/android/views/dialog/StepDistanceDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GG314"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog$1;->this$0:Lcom/keephealth/android/views/dialog/StepDistanceDialog;

    # getter for: Lcom/keephealth/android/views/dialog/StepDistanceDialog;->onSelectClick:Lcom/keephealth/android/views/dialog/StepDistanceDialog$OnSelectClick;
    invoke-static {p1}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->access$100(Lcom/keephealth/android/views/dialog/StepDistanceDialog;)Lcom/keephealth/android/views/dialog/StepDistanceDialog$OnSelectClick;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog$1;->this$0:Lcom/keephealth/android/views/dialog/StepDistanceDialog;

    # getter for: Lcom/keephealth/android/views/dialog/StepDistanceDialog;->title:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->access$000(Lcom/keephealth/android/views/dialog/StepDistanceDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog$OnSelectClick;->onSelect(Ljava/lang/String;)V

    .line 92
    :cond_40
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog$1;->this$0:Lcom/keephealth/android/views/dialog/StepDistanceDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->dismiss()V

    return-void
.end method
