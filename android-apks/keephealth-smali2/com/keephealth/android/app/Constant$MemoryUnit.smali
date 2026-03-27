.class public final enum Lcom/keephealth/android/app/Constant$MemoryUnit;
.super Ljava/lang/Enum;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/app/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MemoryUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/app/Constant$MemoryUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/app/Constant$MemoryUnit;

.field public static final enum BYTE:Lcom/keephealth/android/app/Constant$MemoryUnit;

.field public static final enum GB:Lcom/keephealth/android/app/Constant$MemoryUnit;

.field public static final enum KB:Lcom/keephealth/android/app/Constant$MemoryUnit;

.field public static final enum MB:Lcom/keephealth/android/app/Constant$MemoryUnit;


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/app/Constant$MemoryUnit;
    .registers 4

    .line 54
    sget-object v0, Lcom/keephealth/android/app/Constant$MemoryUnit;->BYTE:Lcom/keephealth/android/app/Constant$MemoryUnit;

    sget-object v1, Lcom/keephealth/android/app/Constant$MemoryUnit;->KB:Lcom/keephealth/android/app/Constant$MemoryUnit;

    sget-object v2, Lcom/keephealth/android/app/Constant$MemoryUnit;->MB:Lcom/keephealth/android/app/Constant$MemoryUnit;

    sget-object v3, Lcom/keephealth/android/app/Constant$MemoryUnit;->GB:Lcom/keephealth/android/app/Constant$MemoryUnit;

    filled-new-array {v0, v1, v2, v3}, [Lcom/keephealth/android/app/Constant$MemoryUnit;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 55
    new-instance v0, Lcom/keephealth/android/app/Constant$MemoryUnit;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/app/Constant$MemoryUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/app/Constant$MemoryUnit;->BYTE:Lcom/keephealth/android/app/Constant$MemoryUnit;

    .line 56
    new-instance v0, Lcom/keephealth/android/app/Constant$MemoryUnit;

    const-string v1, "KB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/app/Constant$MemoryUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/app/Constant$MemoryUnit;->KB:Lcom/keephealth/android/app/Constant$MemoryUnit;

    .line 57
    new-instance v0, Lcom/keephealth/android/app/Constant$MemoryUnit;

    const-string v1, "MB"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/app/Constant$MemoryUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/app/Constant$MemoryUnit;->MB:Lcom/keephealth/android/app/Constant$MemoryUnit;

    .line 58
    new-instance v0, Lcom/keephealth/android/app/Constant$MemoryUnit;

    const-string v1, "GB"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/app/Constant$MemoryUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/app/Constant$MemoryUnit;->GB:Lcom/keephealth/android/app/Constant$MemoryUnit;

    .line 54
    invoke-static {}, Lcom/keephealth/android/app/Constant$MemoryUnit;->$values()[Lcom/keephealth/android/app/Constant$MemoryUnit;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/app/Constant$MemoryUnit;->$VALUES:[Lcom/keephealth/android/app/Constant$MemoryUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/app/Constant$MemoryUnit;
    .registers 2

    .line 54
    const-class v0, Lcom/keephealth/android/app/Constant$MemoryUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/app/Constant$MemoryUnit;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/app/Constant$MemoryUnit;
    .registers 1

    .line 54
    sget-object v0, Lcom/keephealth/android/app/Constant$MemoryUnit;->$VALUES:[Lcom/keephealth/android/app/Constant$MemoryUnit;

    invoke-virtual {v0}, [Lcom/keephealth/android/app/Constant$MemoryUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/app/Constant$MemoryUnit;

    return-object v0
.end method
