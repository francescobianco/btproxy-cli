.class Lcom/keephealth/android/childmodule/DialogView$4;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "DialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/DialogView;->showGoldDialog(ILandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/DialogView;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/DialogView;Landroid/widget/EditText;)V
    .registers 3

    .line 173
    iput-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$4;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    iput-object p2, p0, Lcom/keephealth/android/childmodule/DialogView$4;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 176
    iget-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_25

    .line 177
    iget-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$4;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/DialogView;->onOkClick:Lcom/keephealth/android/childmodule/DialogView$OnOkClick;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/DialogView$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/keephealth/android/childmodule/DialogView$OnOkClick;->onClickOk(I)V

    .line 179
    :cond_25
    iget-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$4;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/DialogView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 180
    iget-object v0, p0, Lcom/keephealth/android/childmodule/DialogView$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 181
    iget-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$4;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/DialogView;->dismiss()V

    return-void
.end method
