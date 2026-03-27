.class Lcom/keephealth/android/childmodule/DialogView$8;
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

.field final synthetic val$oldHour:I

.field final synthetic val$oldMin:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/DialogView;II)V
    .registers 4

    .line 269
    iput-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$8;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    iput p2, p0, Lcom/keephealth/android/childmodule/DialogView$8;->val$oldHour:I

    iput p3, p0, Lcom/keephealth/android/childmodule/DialogView$8;->val$oldMin:I

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 272
    iget-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$8;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/DialogView;->onSelectTime:Lcom/keephealth/android/childmodule/DialogView$OnSelectTime;

    iget v0, p0, Lcom/keephealth/android/childmodule/DialogView$8;->val$oldHour:I

    iget v1, p0, Lcom/keephealth/android/childmodule/DialogView$8;->val$oldMin:I

    invoke-interface {p1, v0, v1}, Lcom/keephealth/android/childmodule/DialogView$OnSelectTime;->selectTime(II)V

    .line 273
    iget-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$8;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/DialogView;->dismiss()V

    return-void
.end method
