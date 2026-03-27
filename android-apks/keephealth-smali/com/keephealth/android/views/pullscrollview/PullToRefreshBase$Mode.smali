.class public final enum Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

.field public static final enum BOTH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

.field public static final enum DISABLED:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

.field public static final enum MANUAL_REFRESH_ONLY:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

.field public static PULL_DOWN_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

.field public static final enum PULL_FROM_END:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

.field public static final enum PULL_FROM_START:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

.field public static PULL_UP_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;


# instance fields
.field private mIntValue:I


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;
    .registers 5

    .line 1291
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->DISABLED:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    sget-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    sget-object v3, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->BOTH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    sget-object v4, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 1296
    new-instance v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->DISABLED:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    .line 1303
    new-instance v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    const-string v1, "PULL_FROM_START"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    .line 1310
    new-instance v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    const-string v2, "PULL_FROM_END"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    .line 1315
    new-instance v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    const-string v3, "BOTH"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v4}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->BOTH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    .line 1322
    new-instance v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    const-string v3, "MANUAL_REFRESH_ONLY"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v4}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    .line 1291
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->$values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    move-result-object v2

    sput-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->$VALUES:[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    .line 1324
    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    .line 1326
    sput-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1354
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1355
    iput p3, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->mIntValue:I

    return-void
.end method

.method static getDefault()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;
    .registers 1

    .line 1348
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    return-object v0
.end method

.method static mapIntToValue(I)Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;
    .registers 6

    .line 1337
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 1338
    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->getIntValue()I

    move-result v4

    if-ne p0, v4, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1344
    :cond_14
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->getDefault()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;
    .registers 2

    .line 1291
    const-class v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;
    .registers 1

    .line 1291
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->$VALUES:[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v0}, [Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    return-object v0
.end method


# virtual methods
.method getIntValue()I
    .registers 2

    .line 1380
    iget v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->mIntValue:I

    return v0
.end method

.method permitsPullToRefresh()Z
    .registers 2

    .line 1362
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->DISABLED:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_a

    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public showFooterLoadingLayout()Z
    .registers 2

    .line 1376
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->BOTH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public showHeaderLoadingLayout()Z
    .registers 2

    .line 1369
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->BOTH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
