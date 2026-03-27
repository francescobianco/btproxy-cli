.class public Lcom/keephealth/android/views/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showWaitDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .registers 3

    .line 20
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 22
    const-string p1, ""

    .line 24
    :cond_d
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 25
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 26
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-object v0
.end method
