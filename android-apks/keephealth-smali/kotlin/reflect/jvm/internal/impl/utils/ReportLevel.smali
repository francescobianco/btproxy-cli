.class public final enum Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;
.super Ljava/lang/Enum;
.source "Jsr305State.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel$Companion;

.field public static final enum IGNORE:Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

.field public static final enum STRICT:Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

.field public static final enum WARN:Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

    const/4 v1, 0x0

    .line 20
    const-string v2, "ignore"

    const-string v3, "IGNORE"

    invoke-direct {v0, v3, v1, v2}, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;->IGNORE:Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

    const/4 v2, 0x1

    .line 21
    const-string v3, "warn"

    const-string v4, "WARN"

    invoke-direct {v1, v4, v2, v3}, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;->WARN:Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

    const/4 v3, 0x2

    .line 22
    const-string v4, "strict"

    const-string v5, "STRICT"

    invoke-direct {v2, v5, v3, v4}, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;->STRICT:Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

    filled-new-array {v0, v1, v2}, [Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;->Companion:Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;
    .registers 2

    const-class v0, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

    return-object v0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final isIgnore()Z
    .registers 2

    .line 30
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;->IGNORE:Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

    if-ne p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final isWarning()Z
    .registers 2

    .line 29
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;->WARN:Lkotlin/reflect/jvm/internal/impl/utils/ReportLevel;

    if-ne p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
