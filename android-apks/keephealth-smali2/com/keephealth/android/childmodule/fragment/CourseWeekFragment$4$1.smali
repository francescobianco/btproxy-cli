.class Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4$1;
.super Ljava/lang/Object;
.source "CourseWeekFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1076
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4$1;->this$1:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;

    iput-object p2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4$1;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1080
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_13

    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4$1;->val$editText:Landroid/widget/EditText;

    .line 1081
    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_24

    .line 1082
    :cond_13
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1083
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_24
    return-void
.end method
