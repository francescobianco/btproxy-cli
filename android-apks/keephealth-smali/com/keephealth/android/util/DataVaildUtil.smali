.class public Lcom/keephealth/android/util/DataVaildUtil;
.super Ljava/lang/Object;
.source "DataVaildUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isEmail(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_11

    .line 92
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 93
    const-string v0, "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private static isEmailOld(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_11

    .line 103
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 104
    const-string v0, "\\w+([-+.\']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .registers 2

    .line 127
    sget v0, Lcom/keephealth/android/app/AppApplication;->foreign:I

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-nez v0, :cond_9

    goto :goto_10

    .line 130
    :cond_9
    const-string v0, "\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidPhoneNumber(Ljava/lang/String;)Z
    .registers 2

    .line 121
    const-string v0, "^1[3-9]\\d{9}$"

    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static vaildEmailAndPwd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isEmail(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5a

    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isEmailOld(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_5a

    .line 53
    :cond_12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const v1, 0x7f10032d

    if-eqz p1, :cond_27

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    .line 57
    :cond_27
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v3, 0x6

    if-lt p1, v3, :cond_4e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x14

    if-le p1, v3, :cond_37

    goto :goto_4e

    .line 63
    :cond_37
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v3, :cond_4c

    const p1, 0x7f1004d3

    .line 64
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    :cond_4c
    const/4 p0, 0x1

    return p0

    .line 58
    :cond_4e
    :goto_4e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    :cond_5a
    :goto_5a
    const p1, 0x7f1002a8

    .line 50
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return v2
.end method

.method public static vaildEmailAndPwd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isEmail(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isEmailOld(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_2d

    .line 79
    :cond_12
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x14

    if-le p1, p2, :cond_2b

    if-eqz p3, :cond_2a

    const p1, 0x7f1004d3

    .line 81
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2a
    return v2

    :cond_2b
    const/4 p0, 0x1

    return p0

    :cond_2d
    :goto_2d
    if-eqz p3, :cond_39

    const p1, 0x7f1002a8

    .line 74
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_39
    return v2
.end method

.method public static vaildUserName(Ljava/lang/String;)Z
    .registers 2

    .line 112
    const-string v0, "delete|sleep|drop|truncate|%20|=|<|>|%|\\+|\\\\|\'|\"|!=|<|>"

    .line 113
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static validData(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/keephealth/android/util/DataVaildUtil;->validData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static validData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 28
    invoke-static {p0, p2}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method public static validEmail(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isEmail(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isEmailOld(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method public static validPwd(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_1c

    const p1, 0x7f1004d3

    .line 41
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method
