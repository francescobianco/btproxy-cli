.class Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;
.super Ljava/lang/Object;
.source "AddRewardNameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isHandlingInput:Z

.field private textName:Ljava/lang/String;

.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    .line 145
    iget-boolean v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->isHandlingInput:Z

    if-nez v0, :cond_9f

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->isHandlingInput:Z

    .line 147
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_24

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->bytes:[B

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    iget-object v2, v0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->bytes:[B

    array-length v2, v2

    iput v2, v0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->maxLengths:I

    goto :goto_28

    .line 151
    :cond_24
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    iput v1, v0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->maxLengths:I

    .line 153
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "maxLengths:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    iget v2, v2, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->maxLengths:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  s.length:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tr54rr"

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    iget v0, v0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->maxLengths:I

    const/16 v2, 0x14

    if-le v0, v2, :cond_81

    .line 155
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->etAddName:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->textName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->textName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9d

    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->textName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_9d

    .line 157
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->etAddName:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->textName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_9d

    .line 160
    :cond_81
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->textName:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->etAddName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->etAddName:Landroid/widget/EditText;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 164
    :cond_9d
    :goto_9d
    iput-boolean v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;->isHandlingInput:Z

    :cond_9f
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
