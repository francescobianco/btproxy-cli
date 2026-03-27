.class public final enum Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

.field public static final enum MANUAL_REFRESHING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

.field public static final enum OVERSCROLLING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

.field public static final enum PULL_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

.field public static final enum REFRESHING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

.field public static final enum RELEASE_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

.field public static final enum RESET:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;


# instance fields
.field private mIntValue:I


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;
    .registers 6

    .line 1472
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RESET:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    sget-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    sget-object v3, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->REFRESHING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    sget-object v4, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    sget-object v5, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->OVERSCROLLING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    filled-new-array/range {v0 .. v5}, [Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 1478
    new-instance v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    const-string v1, "RESET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RESET:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    .line 1484
    new-instance v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    const-string v1, "PULL_TO_REFRESH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    .line 1490
    new-instance v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    const-string v1, "RELEASE_TO_REFRESH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    .line 1495
    new-instance v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    const/4 v1, 0x3

    const/16 v2, 0x8

    const-string v3, "REFRESHING"

    invoke-direct {v0, v3, v1, v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->REFRESHING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    .line 1501
    new-instance v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    const/4 v1, 0x4

    const/16 v2, 0x9

    const-string v3, "MANUAL_REFRESHING"

    invoke-direct {v0, v3, v1, v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    .line 1507
    new-instance v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    const/4 v1, 0x5

    const/16 v2, 0x10

    const-string v3, "OVERSCROLLING"

    invoke-direct {v0, v3, v1, v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->OVERSCROLLING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    .line 1472
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->$values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->$VALUES:[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1528
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1529
    iput p3, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->mIntValue:I

    return-void
.end method

.method static mapIntToValue(I)Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;
    .registers 6

    .line 1516
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 1517
    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->getIntValue()I

    move-result v4

    if-ne p0, v4, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1523
    :cond_14
    sget-object p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RESET:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;
    .registers 2

    .line 1472
    const-class v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;
    .registers 1

    .line 1472
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->$VALUES:[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    invoke-virtual {v0}, [Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    return-object v0
.end method


# virtual methods
.method getIntValue()I
    .registers 2

    .line 1533
    iget v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->mIntValue:I

    return v0
.end method
