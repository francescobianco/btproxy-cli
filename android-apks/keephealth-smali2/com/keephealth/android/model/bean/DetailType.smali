.class public final enum Lcom/keephealth/android/model/bean/DetailType;
.super Ljava/lang/Enum;
.source "DetailType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/model/bean/DetailType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/model/bean/DetailType;

.field public static final enum CAL:Lcom/keephealth/android/model/bean/DetailType;

.field public static final enum DISTANCE:Lcom/keephealth/android/model/bean/DetailType;

.field public static final enum STEP:Lcom/keephealth/android/model/bean/DetailType;


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/model/bean/DetailType;
    .registers 3

    .line 5
    sget-object v0, Lcom/keephealth/android/model/bean/DetailType;->STEP:Lcom/keephealth/android/model/bean/DetailType;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailType;->CAL:Lcom/keephealth/android/model/bean/DetailType;

    sget-object v2, Lcom/keephealth/android/model/bean/DetailType;->DISTANCE:Lcom/keephealth/android/model/bean/DetailType;

    filled-new-array {v0, v1, v2}, [Lcom/keephealth/android/model/bean/DetailType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 6
    new-instance v0, Lcom/keephealth/android/model/bean/DetailType;

    const-string v1, "STEP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/model/bean/DetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/model/bean/DetailType;->STEP:Lcom/keephealth/android/model/bean/DetailType;

    new-instance v0, Lcom/keephealth/android/model/bean/DetailType;

    const-string v1, "CAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/model/bean/DetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/model/bean/DetailType;->CAL:Lcom/keephealth/android/model/bean/DetailType;

    new-instance v0, Lcom/keephealth/android/model/bean/DetailType;

    const-string v1, "DISTANCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/model/bean/DetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/model/bean/DetailType;->DISTANCE:Lcom/keephealth/android/model/bean/DetailType;

    .line 5
    invoke-static {}, Lcom/keephealth/android/model/bean/DetailType;->$values()[Lcom/keephealth/android/model/bean/DetailType;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/model/bean/DetailType;->$VALUES:[Lcom/keephealth/android/model/bean/DetailType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/model/bean/DetailType;
    .registers 2

    .line 5
    const-class v0, Lcom/keephealth/android/model/bean/DetailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/model/bean/DetailType;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/model/bean/DetailType;
    .registers 1

    .line 5
    sget-object v0, Lcom/keephealth/android/model/bean/DetailType;->$VALUES:[Lcom/keephealth/android/model/bean/DetailType;

    invoke-virtual {v0}, [Lcom/keephealth/android/model/bean/DetailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/model/bean/DetailType;

    return-object v0
.end method
