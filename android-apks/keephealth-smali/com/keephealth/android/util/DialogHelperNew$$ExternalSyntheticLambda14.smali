.class public final synthetic Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/view/inputmethod/InputMethodManager;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/app/Dialog;

.field public final synthetic f$3:Lcom/keephealth/android/util/DialogHelperNew$SetInputCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;Landroid/app/Dialog;Lcom/keephealth/android/util/DialogHelperNew$SetInputCallback;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda14;->f$0:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda14;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda14;->f$2:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda14;->f$3:Lcom/keephealth/android/util/DialogHelperNew$SetInputCallback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda14;->f$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda14;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda14;->f$2:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda14;->f$3:Lcom/keephealth/android/util/DialogHelperNew$SetInputCallback;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/keephealth/android/util/DialogHelperNew;->lambda$getInputDialog$1(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;Landroid/app/Dialog;Lcom/keephealth/android/util/DialogHelperNew$SetInputCallback;Landroid/view/View;)V

    return-void
.end method
