.class public final enum Lcom/keephealth/android/model/bean/WeekMonthYearEnum;
.super Ljava/lang/Enum;
.source "WeekMonthYearEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/model/bean/WeekMonthYearEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

.field public static final enum MONTH:Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

.field public static final enum WEEK:Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

.field public static final enum YEAR:Lcom/keephealth/android/model/bean/WeekMonthYearEnum;


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/model/bean/WeekMonthYearEnum;
    .registers 3

    .line 9
    sget-object v0, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;->WEEK:Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

    sget-object v1, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;->MONTH:Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

    sget-object v2, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;->YEAR:Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

    filled-new-array {v0, v1, v2}, [Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 12
    new-instance v0, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

    const-string v1, "WEEK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;->WEEK:Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

    new-instance v0, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

    const-string v1, "MONTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;->MONTH:Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

    new-instance v0, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

    const-string v1, "YEAR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;->YEAR:Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

    .line 9
    invoke-static {}, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;->$values()[Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;->$VALUES:[Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/model/bean/WeekMonthYearEnum;
    .registers 2

    .line 9
    const-class v0, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/model/bean/WeekMonthYearEnum;
    .registers 1

    .line 9
    sget-object v0, Lcom/keephealth/android/model/bean/WeekMonthYearEnum;->$VALUES:[Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

    invoke-virtual {v0}, [Lcom/keephealth/android/model/bean/WeekMonthYearEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/model/bean/WeekMonthYearEnum;

    return-object v0
.end method
