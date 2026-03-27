.class Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$2;
.super Ljava/lang/Object;
.source "UpdatePasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

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

    .line 185
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->handleTextChanged()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$000(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V

    return-void
.end method
