.class public Lcom/keephealth/android/util/view/ChangeViewUtils;
.super Ljava/lang/Object;
.source "ChangeViewUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeGetVerifyCode(Landroid/widget/EditText;Landroid/content/Context;Landroid/widget/TextView;)Z
    .registers 6

    .line 30
    invoke-virtual {p0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0600ba

    if-nez v0, :cond_24

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 31
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return v1

    .line 34
    :cond_24
    invoke-virtual {p0}, Landroid/widget/EditText;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_34

    .line 35
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return v1

    :cond_34
    const p0, 0x7f0600bc

    .line 38
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static changeUserName(Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;)V
    .registers 4

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/16 p0, 0x8

    .line 53
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const p0, 0x7f0600bc

    .line 54
    invoke-static {p3, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_24

    :cond_16
    const/4 p0, 0x0

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const p0, 0x7f0600ba

    .line 57
    invoke-static {p3, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_24
    return-void
.end method
