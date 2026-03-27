.class public final enum Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

.field public static final enum FLIP:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

.field public static final enum ROTATE:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;
    .registers 2

    .line 1245
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    filled-new-array {v0, v1}, [Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1250
    new-instance v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    const-string v1, "ROTATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    .line 1256
    new-instance v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    const-string v1, "FLIP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    .line 1245
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->$values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getDefault()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;
    .registers 1

    .line 1259
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method

.method static mapIntToValue(I)Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    .line 1274
    sget-object p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    return-object p0

    .line 1276
    :cond_6
    sget-object p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;
    .registers 2

    .line 1245
    const-class v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;
    .registers 1

    .line 1245
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v0}, [Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method


# virtual methods
.method createLoadingLayout(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;
    .registers 7

    .line 1281
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$AnimationStyle:[I

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    .line 1284
    new-instance v0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    return-object v0

    .line 1286
    :cond_11
    new-instance v0, Lcom/keephealth/android/views/pullscrollview/internal/FlipLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/keephealth/android/views/pullscrollview/internal/FlipLoadingLayout;-><init>(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    return-object v0
.end method
