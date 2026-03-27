.class Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$SingletonHolder;
.super Ljava/lang/Object;
.source "IntelligentNotificationAddServiceOld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 95
    new-instance v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    invoke-direct {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;-><init>()V

    sput-object v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$SingletonHolder;->INSTANCE:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;
    .registers 1

    .line 94
    sget-object v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$SingletonHolder;->INSTANCE:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    return-object v0
.end method
