.class public Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
.super Ljava/lang/Object;
.source "WomenChangeMutralDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cancelable:Z

.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private isVertical:Z

.field private leftTextColor:I

.field private message:Ljava/lang/String;

.field private messageButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private messageTextColor:I

.field private negativeButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/String;

.field private positiveButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;

.field private rightTextColor:I

.field private title:Ljava/lang/String;

.field private titleTextColor:I

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->isVertical:Z

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->leftTextColor:I

    .line 44
    iput v0, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->rightTextColor:I

    .line 45
    iput v0, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->titleTextColor:I

    .line 46
    iput v0, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->messageTextColor:I

    .line 169
    iput v0, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->type:I

    .line 49
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;
    .registers 9

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 173
    new-instance v1, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;

    iget-object v2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->context:Landroid/content/Context;

    const v3, 0x7f110312

    invoke-direct {v1, v2, v3}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;-><init>(Landroid/content/Context;I)V

    .line 175
    iget v2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->type:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_26

    .line 176
    iget-boolean v2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->isVertical:Z

    if-eqz v2, :cond_1e

    const v2, 0x7f0c00b6

    goto :goto_21

    :cond_1e
    const v2, 0x7f0c00b5

    :goto_21
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_2d

    :cond_26
    const v2, 0x7f0c00b7

    .line 178
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 180
    :goto_2d
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    const-string v2, "6t6tyg"

    const-string v3, "dialog.setCancelable..."

    invoke-static {v2, v3}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-boolean v2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->cancelable:Z

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->setCancelable(Z)V

    const/4 v2, 0x0

    .line 183
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->setCanceledOnTouchOutside(Z)V

    .line 184
    iget v2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->type:I

    const/16 v3, 0x50

    const v5, 0x3f666666    # 0.9f

    if-ne v2, v4, :cond_84

    .line 185
    iget-boolean v2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->isVertical:Z

    if-nez v2, :cond_69

    .line 186
    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_9e

    .line 188
    :cond_69
    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v6, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 189
    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    goto :goto_9e

    .line 192
    :cond_84
    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v6, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 193
    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 195
    :goto_9e
    iget-object v2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f0905f0

    const/16 v5, 0x8

    if-nez v2, :cond_c6

    .line 196
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget v2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->titleTextColor:I

    if-eq v2, v4, :cond_cd

    .line 198
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->titleTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_cd

    .line 201
    :cond_c6
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_cd
    :goto_cd
    iget-object v2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fb

    const v2, 0x7f090408

    .line 204
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 205
    iget-object v6, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    new-instance v6, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget v3, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->messageTextColor:I

    if-eq v3, v4, :cond_11b

    .line 213
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->messageTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_11b

    .line 215
    :cond_fb
    iget-object v2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v2, :cond_11b

    const v2, 0x7f0900f5

    .line 216
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 217
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->contentView:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    :cond_11b
    :goto_11b
    iget-object v2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f090094

    const v6, 0x7f09046a

    if-nez v2, :cond_150

    .line 220
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v7, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget v2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->rightTextColor:I

    if-eq v2, v4, :cond_15e

    .line 229
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget v6, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->rightTextColor:I

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_15e

    .line 232
    :cond_150
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 233
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :cond_15e
    :goto_15e
    iget-object v2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->negativeButtonText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v6, 0x7f09043e

    if-nez v2, :cond_190

    .line 237
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget v2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->leftTextColor:I

    if-eq v2, v4, :cond_19e

    .line 246
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget v3, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->leftTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_19e

    .line 250
    :cond_190
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 251
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_19e
    :goto_19e
    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->setContentView(Landroid/view/View;)V

    return-object v1
.end method

.method public isVertical(Z)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->isVertical:Z

    return-object p0
.end method

.method synthetic lambda$create$0$com-keephealth-android-views-dialog-WomenChangeMutralDialog$Builder(Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;Landroid/view/View;)V
    .registers 4

    .line 207
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->dismiss()V

    .line 208
    iget-object p2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->messageButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p2, :cond_d

    const v0, 0x7f090408

    .line 209
    invoke-interface {p2, p1, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_d
    return-void
.end method

.method synthetic lambda$create$1$com-keephealth-android-views-dialog-WomenChangeMutralDialog$Builder(Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;Landroid/view/View;)V
    .registers 4

    .line 223
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->dismiss()V

    .line 224
    iget-object p2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->positiveButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p2, :cond_b

    const/4 v0, -0x1

    .line 225
    invoke-interface {p2, p1, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_b
    return-void
.end method

.method synthetic lambda$create$2$com-keephealth-android-views-dialog-WomenChangeMutralDialog$Builder(Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;Landroid/view/View;)V
    .registers 4

    .line 240
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->dismiss()V

    .line 241
    iget-object p2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->negativeButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p2, :cond_b

    const/4 v0, -0x2

    .line 242
    invoke-interface {p2, p1, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_b
    return-void
.end method

.method public setCancelable(Z)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 2

    .line 109
    iput-boolean p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->cancelable:Z

    return-object p0
.end method

.method public setLeftButton(I)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->negativeButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->negativeButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setLeftButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 3

    .line 137
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->negativeButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setLeftTextColor(I)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->leftTextColor:I

    return-object p0
.end method

.method public setMessage(I)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 3

    .line 73
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->message:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->messageButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessageTextColor(I)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->messageTextColor:I

    return-object p0
.end method

.method public setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->positiveButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setRightButton(Landroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->positiveButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setRightButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 3

    .line 121
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->positiveButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setRightTextColor(I)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->rightTextColor:I

    return-object p0
.end method

.method public setTitle(I)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setTitleTextColor(I)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->titleTextColor:I

    return-object p0
.end method

.method public setType(I)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 2

    .line 165
    iput p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->type:I

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->contentView:Landroid/view/View;

    return-object p0
.end method
