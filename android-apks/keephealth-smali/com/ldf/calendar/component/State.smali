.class public final enum Lcom/ldf/calendar/component/State;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ldf/calendar/component/State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ldf/calendar/component/State;

.field public static final enum CURRENT_MONTH:Lcom/ldf/calendar/component/State;

.field public static final enum NEXT_MONTH:Lcom/ldf/calendar/component/State;

.field public static final enum PAST_MONTH:Lcom/ldf/calendar/component/State;

.field public static final enum SELECT:Lcom/ldf/calendar/component/State;


# direct methods
.method private static synthetic $values()[Lcom/ldf/calendar/component/State;
    .registers 4

    .line 7
    sget-object v0, Lcom/ldf/calendar/component/State;->CURRENT_MONTH:Lcom/ldf/calendar/component/State;

    sget-object v1, Lcom/ldf/calendar/component/State;->PAST_MONTH:Lcom/ldf/calendar/component/State;

    sget-object v2, Lcom/ldf/calendar/component/State;->NEXT_MONTH:Lcom/ldf/calendar/component/State;

    sget-object v3, Lcom/ldf/calendar/component/State;->SELECT:Lcom/ldf/calendar/component/State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ldf/calendar/component/State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 8
    new-instance v0, Lcom/ldf/calendar/component/State;

    const-string v1, "CURRENT_MONTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ldf/calendar/component/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ldf/calendar/component/State;->CURRENT_MONTH:Lcom/ldf/calendar/component/State;

    new-instance v0, Lcom/ldf/calendar/component/State;

    const-string v1, "PAST_MONTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ldf/calendar/component/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ldf/calendar/component/State;->PAST_MONTH:Lcom/ldf/calendar/component/State;

    new-instance v0, Lcom/ldf/calendar/component/State;

    const-string v1, "NEXT_MONTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ldf/calendar/component/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ldf/calendar/component/State;->NEXT_MONTH:Lcom/ldf/calendar/component/State;

    new-instance v0, Lcom/ldf/calendar/component/State;

    const-string v1, "SELECT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ldf/calendar/component/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ldf/calendar/component/State;->SELECT:Lcom/ldf/calendar/component/State;

    .line 7
    invoke-static {}, Lcom/ldf/calendar/component/State;->$values()[Lcom/ldf/calendar/component/State;

    move-result-object v0

    sput-object v0, Lcom/ldf/calendar/component/State;->$VALUES:[Lcom/ldf/calendar/component/State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ldf/calendar/component/State;
    .registers 2

    .line 7
    const-class v0, Lcom/ldf/calendar/component/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ldf/calendar/component/State;

    return-object p0
.end method

.method public static values()[Lcom/ldf/calendar/component/State;
    .registers 1

    .line 7
    sget-object v0, Lcom/ldf/calendar/component/State;->$VALUES:[Lcom/ldf/calendar/component/State;

    invoke-virtual {v0}, [Lcom/ldf/calendar/component/State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ldf/calendar/component/State;

    return-object v0
.end method
