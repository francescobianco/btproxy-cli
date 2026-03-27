.class public Lcom/keephealth/android/util/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field static customToast:Landroid/widget/Toast;

.field private static mLastTime:J

.field private static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$showCustomToast$0(Ljava/lang/String;)V
    .registers 4

    .line 42
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c01aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0905f9

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    sget-object p0, Lcom/keephealth/android/util/ToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz p0, :cond_23

    .line 46
    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    .line 48
    :cond_23
    sget-object p0, Lcom/keephealth/android/util/ToastUtil;->customToast:Landroid/widget/Toast;

    if-eqz p0, :cond_2a

    .line 49
    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    .line 51
    :cond_2a
    new-instance p0, Landroid/widget/Toast;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/keephealth/android/util/ToastUtil;->customToast:Landroid/widget/Toast;

    .line 52
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge p0, v1, :cond_43

    .line 53
    sget-object p0, Lcom/keephealth/android/util/ToastUtil;->customToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 55
    :cond_43
    sget-object p0, Lcom/keephealth/android/util/ToastUtil;->customToast:Landroid/widget/Toast;

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 56
    sget-object p0, Lcom/keephealth/android/util/ToastUtil;->customToast:Landroid/widget/Toast;

    invoke-virtual {p0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 57
    sget-object p0, Lcom/keephealth/android/util/ToastUtil;->customToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$showDeviceToast$2(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .line 96
    sget-object v0, Lcom/keephealth/android/util/ToastUtil;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_a

    .line 97
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/keephealth/android/util/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 99
    :cond_a
    sget-object p0, Lcom/keephealth/android/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 100
    sget-object p0, Lcom/keephealth/android/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 101
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1e

    if-ge p0, p1, :cond_22

    .line 102
    sget-object p0, Lcom/keephealth/android/util/ToastUtil;->mToast:Landroid/widget/Toast;

    const/16 p1, 0x11

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Landroid/widget/Toast;->setGravity(III)V

    .line 104
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sget-wide v0, Lcom/keephealth/android/util/ToastUtil;->mLastTime:J

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    cmp-long p0, p0, v0

    if-lez p0, :cond_3a

    .line 105
    sget-object p0, Lcom/keephealth/android/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/keephealth/android/util/ToastUtil;->mLastTime:J

    :cond_3a
    return-void
.end method

.method static synthetic lambda$showToast$1(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .line 71
    sget-object v0, Lcom/keephealth/android/util/ToastUtil;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_a

    .line 72
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/keephealth/android/util/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 74
    :cond_a
    sget-object p0, Lcom/keephealth/android/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 75
    sget-object p0, Lcom/keephealth/android/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 76
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1e

    if-ge p0, p1, :cond_22

    .line 77
    sget-object p0, Lcom/keephealth/android/util/ToastUtil;->mToast:Landroid/widget/Toast;

    const/16 p1, 0x11

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Landroid/widget/Toast;->setGravity(III)V

    .line 79
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sget-wide v0, Lcom/keephealth/android/util/ToastUtil;->mLastTime:J

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    cmp-long p0, p0, v0

    if-lez p0, :cond_3a

    .line 80
    sget-object p0, Lcom/keephealth/android/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/keephealth/android/util/ToastUtil;->mLastTime:J

    :cond_3a
    return-void
.end method

.method public static showCustomToast(Ljava/lang/String;)V
    .registers 2

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 41
    new-instance v0, Lcom/keephealth/android/util/ToastUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ToastUtil$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public static showDeviceToast(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 95
    new-instance v0, Lcom/keephealth/android/util/ToastUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/keephealth/android/util/ToastUtil$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/keephealth/android/receiver/task/MainThread;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public static showToast(I)V
    .registers 2

    .line 136
    invoke-static {}, Lcom/keephealth/android/app/LibContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 116
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 117
    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;II)V
    .registers 4

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 123
    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 70
    new-instance v0, Lcom/keephealth/android/util/ToastUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/keephealth/android/util/ToastUtil$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/keephealth/android/receiver/task/MainThread;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public static showToast(Ljava/lang/String;)V
    .registers 2

    .line 132
    invoke-static {}, Lcom/keephealth/android/app/LibContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showToastLong(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_3a

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3a

    .line 142
    :cond_9
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c014a

    const/4 v2, 0x0

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0905fb

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 146
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    new-instance p1, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 149
    invoke-virtual {p1, p0}, Landroid/widget/Toast;->setDuration(I)V

    .line 150
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/16 p0, 0x11

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p1, p0, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 152
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3a
    :goto_3a
    return-void
.end method
