.class Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$2;
.super Ljava/lang/Object;
.source "RegisterFirstActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

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
    .registers 7

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4d

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 163
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    array-length p4, p1

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, p4, :cond_25

    aget-object v1, p1, v0

    .line 165
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 167
    :cond_25
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 169
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4d
    return-void
.end method
