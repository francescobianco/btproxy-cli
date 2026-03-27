.class final enum Lcom/tamic/novate/util/LogWraper$LogLevel;
.super Ljava/lang/Enum;
.source "LogWraper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tamic/novate/util/LogWraper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tamic/novate/util/LogWraper$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tamic/novate/util/LogWraper$LogLevel;

.field public static final enum DEBUG:Lcom/tamic/novate/util/LogWraper$LogLevel;

.field public static final enum ERROR:Lcom/tamic/novate/util/LogWraper$LogLevel;

.field public static final enum INFO:Lcom/tamic/novate/util/LogWraper$LogLevel;

.field public static final enum VERBOSE:Lcom/tamic/novate/util/LogWraper$LogLevel;

.field public static final enum WARN:Lcom/tamic/novate/util/LogWraper$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 45
    new-instance v0, Lcom/tamic/novate/util/LogWraper$LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tamic/novate/util/LogWraper$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->DEBUG:Lcom/tamic/novate/util/LogWraper$LogLevel;

    .line 49
    new-instance v1, Lcom/tamic/novate/util/LogWraper$LogLevel;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tamic/novate/util/LogWraper$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tamic/novate/util/LogWraper$LogLevel;->ERROR:Lcom/tamic/novate/util/LogWraper$LogLevel;

    .line 53
    new-instance v2, Lcom/tamic/novate/util/LogWraper$LogLevel;

    const-string v3, "INFO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tamic/novate/util/LogWraper$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tamic/novate/util/LogWraper$LogLevel;->INFO:Lcom/tamic/novate/util/LogWraper$LogLevel;

    .line 57
    new-instance v3, Lcom/tamic/novate/util/LogWraper$LogLevel;

    const-string v4, "VERBOSE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/tamic/novate/util/LogWraper$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tamic/novate/util/LogWraper$LogLevel;->VERBOSE:Lcom/tamic/novate/util/LogWraper$LogLevel;

    .line 61
    new-instance v4, Lcom/tamic/novate/util/LogWraper$LogLevel;

    const-string v5, "WARN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/tamic/novate/util/LogWraper$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/tamic/novate/util/LogWraper$LogLevel;->WARN:Lcom/tamic/novate/util/LogWraper$LogLevel;

    .line 41
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/tamic/novate/util/LogWraper$LogLevel;

    move-result-object v0

    sput-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->$VALUES:[Lcom/tamic/novate/util/LogWraper$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tamic/novate/util/LogWraper$LogLevel;
    .registers 2

    .line 41
    const-class v0, Lcom/tamic/novate/util/LogWraper$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tamic/novate/util/LogWraper$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/tamic/novate/util/LogWraper$LogLevel;
    .registers 1

    .line 41
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->$VALUES:[Lcom/tamic/novate/util/LogWraper$LogLevel;

    invoke-virtual {v0}, [Lcom/tamic/novate/util/LogWraper$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tamic/novate/util/LogWraper$LogLevel;

    return-object v0
.end method
