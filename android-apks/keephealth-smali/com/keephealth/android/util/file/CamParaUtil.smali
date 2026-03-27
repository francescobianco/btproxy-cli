.class public Lcom/keephealth/android/util/file/CamParaUtil;
.super Ljava/lang/Object;
.source "CamParaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/file/CamParaUtil$CameraSizeComparator;
    }
.end annotation


# static fields
.field private static myCamPara:Lcom/keephealth/android/util/file/CamParaUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/keephealth/android/util/file/CamParaUtil;
    .registers 1

    .line 19
    sget-object v0, Lcom/keephealth/android/util/file/CamParaUtil;->myCamPara:Lcom/keephealth/android/util/file/CamParaUtil;

    if-nez v0, :cond_b

    .line 20
    new-instance v0, Lcom/keephealth/android/util/file/CamParaUtil;

    invoke-direct {v0}, Lcom/keephealth/android/util/file/CamParaUtil;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/file/CamParaUtil;->myCamPara:Lcom/keephealth/android/util/file/CamParaUtil;

    :cond_b
    return-object v0
.end method


# virtual methods
.method public printSupportFocusMode(Landroid/hardware/Camera$Parameters;)V
    .registers 3

    .line 58
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p1

    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_8

    :cond_15
    return-void
.end method

.method public printSupportPictureSize(Landroid/hardware/Camera$Parameters;)V
    .registers 4

    .line 46
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 47
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_14
    return-void
.end method
