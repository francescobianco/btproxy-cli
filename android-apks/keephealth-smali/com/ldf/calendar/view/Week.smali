.class public Lcom/ldf/calendar/view/Week;
.super Ljava/lang/Object;
.source "Week.java"


# instance fields
.field public days:[Lcom/ldf/calendar/view/Day;

.field public row:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 14
    new-array v0, v0, [Lcom/ldf/calendar/view/Day;

    iput-object v0, p0, Lcom/ldf/calendar/view/Week;->days:[Lcom/ldf/calendar/view/Day;

    .line 17
    iput p1, p0, Lcom/ldf/calendar/view/Week;->row:I

    return-void
.end method


# virtual methods
.method public getDays()[Lcom/ldf/calendar/view/Day;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/ldf/calendar/view/Week;->days:[Lcom/ldf/calendar/view/Day;

    return-object v0
.end method

.method public getRow()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/ldf/calendar/view/Week;->row:I

    return v0
.end method

.method public setDays([Lcom/ldf/calendar/view/Day;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/ldf/calendar/view/Week;->days:[Lcom/ldf/calendar/view/Day;

    return-void
.end method

.method public setRow(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcom/ldf/calendar/view/Week;->row:I

    return-void
.end method
