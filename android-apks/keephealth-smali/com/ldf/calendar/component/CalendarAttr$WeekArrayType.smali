.class public final enum Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;
.super Ljava/lang/Enum;
.source "CalendarAttr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ldf/calendar/component/CalendarAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WeekArrayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

.field public static final enum Monday:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

.field public static final enum Sunday:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;


# direct methods
.method private static synthetic $values()[Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;
    .registers 2

    .line 62
    sget-object v0, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;->Sunday:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    sget-object v1, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;->Monday:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    filled-new-array {v0, v1}, [Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 63
    new-instance v0, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    const-string v1, "Sunday"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;->Sunday:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    .line 64
    new-instance v0, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    const-string v1, "Monday"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;->Monday:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    .line 62
    invoke-static {}, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;->$values()[Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    move-result-object v0

    sput-object v0, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;->$VALUES:[Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;
    .registers 2

    .line 62
    const-class v0, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    return-object p0
.end method

.method public static values()[Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;
    .registers 1

    .line 62
    sget-object v0, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;->$VALUES:[Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    invoke-virtual {v0}, [Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    return-object v0
.end method
