.class public Lcom/ldf/calendar/component/CalendarAttr;
.super Ljava/lang/Object;
.source "CalendarAttr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;,
        Lcom/ldf/calendar/component/CalendarAttr$CalendarType;
    }
.end annotation


# instance fields
.field private calendarType:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

.field private cellHeight:I

.field private cellWidth:I

.field private weekArrayType:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalendarType()Lcom/ldf/calendar/component/CalendarAttr$CalendarType;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarAttr;->calendarType:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    return-object v0
.end method

.method public getCellHeight()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/ldf/calendar/component/CalendarAttr;->cellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/ldf/calendar/component/CalendarAttr;->cellWidth:I

    return v0
.end method

.method public getWeekArrayType()Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarAttr;->weekArrayType:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    return-object v0
.end method

.method public setCalendarType(Lcom/ldf/calendar/component/CalendarAttr$CalendarType;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/ldf/calendar/component/CalendarAttr;->calendarType:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    return-void
.end method

.method public setCellHeight(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/ldf/calendar/component/CalendarAttr;->cellHeight:I

    return-void
.end method

.method public setCellWidth(I)V
    .registers 2

    .line 59
    iput p1, p0, Lcom/ldf/calendar/component/CalendarAttr;->cellWidth:I

    return-void
.end method

.method public setWeekArrayType(Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/ldf/calendar/component/CalendarAttr;->weekArrayType:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    return-void
.end method
