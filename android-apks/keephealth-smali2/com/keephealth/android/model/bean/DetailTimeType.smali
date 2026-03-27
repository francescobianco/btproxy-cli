.class public final enum Lcom/keephealth/android/model/bean/DetailTimeType;
.super Ljava/lang/Enum;
.source "DetailTimeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/model/bean/DetailTimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/model/bean/DetailTimeType;

.field public static final enum DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

.field public static final enum ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

.field public static final enum SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

.field public static final enum WEEK:Lcom/keephealth/android/model/bean/DetailTimeType;

.field public static final enum YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/model/bean/DetailTimeType;
    .registers 5

    .line 3
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->WEEK:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v2, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v3, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v4, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/keephealth/android/model/bean/DetailTimeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Lcom/keephealth/android/model/bean/DetailTimeType;

    const-string v1, "DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/model/bean/DetailTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    new-instance v0, Lcom/keephealth/android/model/bean/DetailTimeType;

    const-string v1, "WEEK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/model/bean/DetailTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->WEEK:Lcom/keephealth/android/model/bean/DetailTimeType;

    new-instance v0, Lcom/keephealth/android/model/bean/DetailTimeType;

    const-string v1, "ONE_MONTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/model/bean/DetailTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    new-instance v0, Lcom/keephealth/android/model/bean/DetailTimeType;

    const-string v1, "SIX_MONTH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/model/bean/DetailTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    new-instance v0, Lcom/keephealth/android/model/bean/DetailTimeType;

    const-string v1, "YEAR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/model/bean/DetailTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 3
    invoke-static {}, Lcom/keephealth/android/model/bean/DetailTimeType;->$values()[Lcom/keephealth/android/model/bean/DetailTimeType;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->$VALUES:[Lcom/keephealth/android/model/bean/DetailTimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/model/bean/DetailTimeType;
    .registers 2

    .line 3
    const-class v0, Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/model/bean/DetailTimeType;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/model/bean/DetailTimeType;
    .registers 1

    .line 3
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->$VALUES:[Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v0}, [Lcom/keephealth/android/model/bean/DetailTimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/model/bean/DetailTimeType;

    return-object v0
.end method
