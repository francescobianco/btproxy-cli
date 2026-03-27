.class Lcom/keephealth/android/childmodule/DialogView$7;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "DialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/DialogView;->showTimeDialog(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/DialogView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/DialogView;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$7;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 265
    iget-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$7;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/DialogView;->onSelectTime:Lcom/keephealth/android/childmodule/DialogView$OnSelectTime;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/DialogView$7;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    iget v0, v0, Lcom/keephealth/android/childmodule/DialogView;->hour:I

    iget-object v1, p0, Lcom/keephealth/android/childmodule/DialogView$7;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    iget v1, v1, Lcom/keephealth/android/childmodule/DialogView;->min:I

    invoke-interface {p1, v0, v1}, Lcom/keephealth/android/childmodule/DialogView$OnSelectTime;->selectTime(II)V

    .line 266
    iget-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$7;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/DialogView;->dismiss()V

    return-void
.end method
