.class public Lcom/keephealth/android/util/TabDb;
.super Ljava/lang/Object;
.source "TabDb.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFragments()[Ljava/lang/Class;
    .registers 3

    const/4 v0, 0x5

    .line 24
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/keephealth/android/ui/mine/fragment/MineFragmentNew;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getTabsImg()[I
    .registers 5

    const v0, 0x7f0d02f7

    const v1, 0x7f0d02ff

    const v2, 0x7f0d02fb

    const v3, 0x7f0d02fd

    const v4, 0x7f0d02f9

    .line 16
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public static getTabsImgLight()[I
    .registers 5

    const v0, 0x7f0d02f8

    const v1, 0x7f0d0300

    const v2, 0x7f0d02fc

    const v3, 0x7f0d02fe

    const v4, 0x7f0d02fa

    .line 20
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public static getTabsTxt()[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x5

    .line 12
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10072c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10072a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10072b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10072e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method
