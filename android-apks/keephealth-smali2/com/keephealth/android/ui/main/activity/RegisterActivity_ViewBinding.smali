.class public Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RegisterActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

.field private view7f0900ac:Landroid/view/View;

.field private view7f09016f:Landroid/view/View;

.field private view7f09016fTextWatcher:Landroid/text/TextWatcher;

.field private view7f090176:Landroid/view/View;

.field private view7f090176TextWatcher:Landroid/text/TextWatcher;

.field private view7f090178:Landroid/view/View;

.field private view7f090178TextWatcher:Landroid/text/TextWatcher;

.field private view7f090204:Landroid/view/View;

.field private view7f09021b:Landroid/view/View;

.field private view7f0906d3:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity;)V
    .registers 3

    .line 46
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity;Landroid/view/View;)V
    .registers 7

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    .line 54
    const-string v0, "field \'etUsername\' and method \'textChanged\'"

    const v1, 0x7f090178

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    const-string v2, "field \'etUsername\'"

    const-class v3, Landroid/widget/EditText;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etUsername:Landroid/widget/EditText;

    .line 56
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f090178:Landroid/view/View;

    .line 57
    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/RegisterActivity;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f090178TextWatcher:Landroid/text/TextWatcher;

    .line 71
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 72
    const-string v0, "field \'etPwd\' and method \'textChanged\'"

    const v1, 0x7f090176

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    const-string v2, "field \'etPwd\'"

    const-class v3, Landroid/widget/EditText;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etPwd:Landroid/widget/EditText;

    .line 74
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f090176:Landroid/view/View;

    .line 75
    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/RegisterActivity;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f090176TextWatcher:Landroid/text/TextWatcher;

    .line 89
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    const-string v0, "field \'etSmsCode\' and method \'textChanged\'"

    const v1, 0x7f09016f

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 91
    const-string v2, "field \'etSmsCode\'"

    const-class v3, Landroid/widget/EditText;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etSmsCode:Landroid/widget/EditText;

    .line 92
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f09016f:Landroid/view/View;

    .line 93
    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/RegisterActivity;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f09016fTextWatcher:Landroid/text/TextWatcher;

    .line 107
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    const-string v0, "field \'btnRegiest\' and method \'resiestAccount\'"

    const v1, 0x7f0900ac

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 109
    const-string v2, "field \'btnRegiest\'"

    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->btnRegiest:Landroid/widget/Button;

    .line 110
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f0900ac:Landroid/view/View;

    .line 111
    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const-string v0, "field \'tvSmsCode\' and method \'sendCode\'"

    const v1, 0x7f0906d3

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 118
    const-string v2, "field \'tvSmsCode\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->tvSmsCode:Landroid/widget/TextView;

    .line 119
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f0906d3:Landroid/view/View;

    .line 120
    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const-string v0, "field \'imgStatus\' and method \'updatePwdStatus\'"

    const v1, 0x7f09021b

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 127
    const-string v2, "field \'imgStatus\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->imgStatus:Landroid/widget/ImageView;

    .line 128
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f09021b:Landroid/view/View;

    .line 129
    new-instance v1, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const-string v0, "field \'imgClean\' and method \'cleanUserName\'"

    const v1, 0x7f090204

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 136
    const-string v0, "field \'imgClean\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->imgClean:Landroid/widget/ImageView;

    .line 137
    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f090204:Landroid/view/View;

    .line 138
    new-instance v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$7;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/RegisterActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    if-eqz v0, :cond_59

    const/4 v1, 0x0

    .line 151
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    .line 153
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etUsername:Landroid/widget/EditText;

    .line 154
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etPwd:Landroid/widget/EditText;

    .line 155
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etSmsCode:Landroid/widget/EditText;

    .line 156
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->btnRegiest:Landroid/widget/Button;

    .line 157
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->tvSmsCode:Landroid/widget/TextView;

    .line 158
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->imgStatus:Landroid/widget/ImageView;

    .line 159
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->imgClean:Landroid/widget/ImageView;

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f090178:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f090178TextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f090178TextWatcher:Landroid/text/TextWatcher;

    .line 163
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f090178:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f090176:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f090176TextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f090176TextWatcher:Landroid/text/TextWatcher;

    .line 166
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f090176:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f09016f:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f09016fTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f09016fTextWatcher:Landroid/text/TextWatcher;

    .line 169
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f09016f:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f0900ac:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f0900ac:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f0906d3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f0906d3:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f09021b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f09021b:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f090204:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;->view7f090204:Landroid/view/View;

    return-void

    .line 150
    :cond_59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
