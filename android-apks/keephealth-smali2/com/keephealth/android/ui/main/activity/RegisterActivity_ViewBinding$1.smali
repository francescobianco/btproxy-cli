.class Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$1;
.super Ljava/lang/Object;
.source "RegisterActivity_ViewBinding.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/RegisterActivity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$1;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 60
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->textChanged()V

    return-void
.end method
