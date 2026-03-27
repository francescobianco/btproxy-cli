.class public Lcom/keephealth/android/util/AppStatusManager;
.super Ljava/lang/Object;
.source "AppStatusManager.java"


# static fields
.field public static appStatusManager:Lcom/keephealth/android/util/AppStatusManager;


# instance fields
.field public appStatus:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/keephealth/android/util/AppStatusManager;->appStatus:I

    return-void
.end method

.method public static getInstance()Lcom/keephealth/android/util/AppStatusManager;
    .registers 1

    .line 14
    sget-object v0, Lcom/keephealth/android/util/AppStatusManager;->appStatusManager:Lcom/keephealth/android/util/AppStatusManager;

    if-nez v0, :cond_b

    .line 15
    new-instance v0, Lcom/keephealth/android/util/AppStatusManager;

    invoke-direct {v0}, Lcom/keephealth/android/util/AppStatusManager;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/AppStatusManager;->appStatusManager:Lcom/keephealth/android/util/AppStatusManager;

    .line 17
    :cond_b
    sget-object v0, Lcom/keephealth/android/util/AppStatusManager;->appStatusManager:Lcom/keephealth/android/util/AppStatusManager;

    return-object v0
.end method


# virtual methods
.method public getAppStatus()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/keephealth/android/util/AppStatusManager;->appStatus:I

    return v0
.end method

.method public setAppStatus(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcom/keephealth/android/util/AppStatusManager;->appStatus:I

    return-void
.end method
