.class public final enum Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

.field public static final enum HORIZONTAL:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

.field public static final enum VERTICAL:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;
    .registers 2

    .line 1468
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->VERTICAL:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    filled-new-array {v0, v1}, [Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1469
    new-instance v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    const-string v1, "VERTICAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->VERTICAL:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    new-instance v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    .line 1468
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->$values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->$VALUES:[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1468
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;
    .registers 2

    .line 1468
    const-class v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;
    .registers 1

    .line 1468
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->$VALUES:[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    invoke-virtual {v0}, [Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    return-object v0
.end method
