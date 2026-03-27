.class public Lcom/ldf/calendar/model/CalendarDate;
.super Ljava/lang/Object;
.source "CalendarDate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public day:I

.field public month:I

.field public year:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/ldf/calendar/Utils;->getYear()I

    move-result v0

    iput v0, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 31
    invoke-static {}, Lcom/ldf/calendar/Utils;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 32
    invoke-static {}, Lcom/ldf/calendar/Utils;->getDay()I

    move-result v0

    iput v0, p0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 6

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/16 v1, 0xc

    if-le p2, v1, :cond_c

    add-int/lit8 p1, p1, 0x1

    move p2, v0

    goto :goto_11

    :cond_c
    if-ge p2, v0, :cond_11

    add-int/lit8 p1, p1, -0x1

    move p2, v1

    .line 24
    :cond_11
    :goto_11
    iput p1, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 25
    iput p2, p0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 26
    iput p3, p0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    return-void
.end method


# virtual methods
.method public cloneSelf()Lcom/ldf/calendar/model/CalendarDate;
    .registers 5

    .line 151
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v2, p0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    iget v3, p0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-direct {v0, v1, v2, v3}, Lcom/ldf/calendar/model/CalendarDate;-><init>(III)V

    return-object v0
.end method

.method public equals(Lcom/ldf/calendar/model/CalendarDate;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 142
    :cond_4
    invoke-virtual {p0}, Lcom/ldf/calendar/model/CalendarDate;->getYear()I

    move-result v1

    invoke-virtual {p1}, Lcom/ldf/calendar/model/CalendarDate;->getYear()I

    move-result v2

    if-ne v1, v2, :cond_24

    .line 143
    invoke-virtual {p0}, Lcom/ldf/calendar/model/CalendarDate;->getMonth()I

    move-result v1

    invoke-virtual {p1}, Lcom/ldf/calendar/model/CalendarDate;->getMonth()I

    move-result v2

    if-ne v1, v2, :cond_24

    .line 144
    invoke-virtual {p0}, Lcom/ldf/calendar/model/CalendarDate;->getDay()I

    move-result v1

    invoke-virtual {p1}, Lcom/ldf/calendar/model/CalendarDate;->getDay()I

    move-result p1

    if-ne v1, p1, :cond_24

    const/4 p1, 0x1

    return p1

    :cond_24
    return v0
.end method

.method public getDay()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 123
    iget v0, p0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .line 115
    iget v0, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    return v0
.end method

.method public modifyDay(I)Lcom/ldf/calendar/model/CalendarDate;
    .registers 7

    .line 41
    iget v0, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v1, p0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/ldf/calendar/Utils;->getMonthDays(II)I

    move-result v0

    .line 42
    iget v1, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v2, p0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    invoke-static {v1, v2}, Lcom/ldf/calendar/Utils;->getMonthDays(II)I

    move-result v1

    .line 45
    const-string v2, "\u79fb\u52a8\u5929\u6570\u8fc7\u5927"

    const-string v3, "ldf"

    if-le p1, v1, :cond_27

    .line 46
    new-instance p1, Lcom/ldf/calendar/model/CalendarDate;

    iget v0, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v1, p0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    iget v4, p0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-direct {p1, v0, v1, v4}, Lcom/ldf/calendar/model/CalendarDate;-><init>(III)V

    .line 47
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_27
    if-lez p1, :cond_34

    .line 49
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v2, p0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    invoke-direct {v0, v1, v2, p1}, Lcom/ldf/calendar/model/CalendarDate;-><init>(III)V

    move-object p1, v0

    goto :goto_54

    :cond_34
    rsub-int/lit8 v1, v0, 0x0

    if-le p1, v1, :cond_46

    .line 51
    new-instance v1, Lcom/ldf/calendar/model/CalendarDate;

    iget v2, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v3, p0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v0, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>(III)V

    move-object p1, v1

    goto :goto_54

    .line 53
    :cond_46
    new-instance p1, Lcom/ldf/calendar/model/CalendarDate;

    iget v0, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v1, p0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    iget v4, p0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-direct {p1, v0, v1, v4}, Lcom/ldf/calendar/model/CalendarDate;-><init>(III)V

    .line 54
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    return-object p1
.end method

.method public modifyMonth(I)Lcom/ldf/calendar/model/CalendarDate;
    .registers 6

    .line 83
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    .line 84
    iget v1, p0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    add-int/2addr v1, p1

    const/16 v2, 0xc

    if-lez p1, :cond_29

    if-le v1, v2, :cond_20

    .line 87
    iget p1, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    add-int/lit8 v3, v1, -0x1

    div-int/2addr v3, v2

    add-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/ldf/calendar/model/CalendarDate;->setYear(I)V

    .line 88
    rem-int/2addr v1, v2

    if-nez v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v2, v1

    :goto_1c
    invoke-virtual {v0, v2}, Lcom/ldf/calendar/model/CalendarDate;->setMonth(I)V

    goto :goto_5c

    .line 90
    :cond_20
    iget p1, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    invoke-virtual {v0, p1}, Lcom/ldf/calendar/model/CalendarDate;->setYear(I)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/ldf/calendar/model/CalendarDate;->setMonth(I)V

    goto :goto_5c

    :cond_29
    if-nez v1, :cond_36

    .line 95
    iget p1, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/ldf/calendar/model/CalendarDate;->setYear(I)V

    .line 96
    invoke-virtual {v0, v2}, Lcom/ldf/calendar/model/CalendarDate;->setMonth(I)V

    goto :goto_5c

    :cond_36
    if-gez v1, :cond_51

    .line 98
    iget p1, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    div-int/lit8 v3, v1, 0xc

    add-int/2addr p1, v3

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/ldf/calendar/model/CalendarDate;->setYear(I)V

    .line 99
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rem-int/2addr p1, v2

    rsub-int/lit8 p1, p1, 0xc

    if-nez p1, :cond_4c

    goto :goto_4d

    :cond_4c
    move v2, p1

    .line 100
    :goto_4d
    invoke-virtual {v0, v2}, Lcom/ldf/calendar/model/CalendarDate;->setMonth(I)V

    goto :goto_5c

    .line 102
    :cond_51
    iget p1, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    invoke-virtual {v0, p1}, Lcom/ldf/calendar/model/CalendarDate;->setYear(I)V

    if-nez v1, :cond_59

    move v1, v2

    .line 103
    :cond_59
    invoke-virtual {v0, v1}, Lcom/ldf/calendar/model/CalendarDate;->setMonth(I)V

    :goto_5c
    return-object v0
.end method

.method public modifyWeek(I)Lcom/ldf/calendar/model/CalendarDate;
    .registers 8

    .line 65
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 67
    iget v2, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 68
    iget v2, p0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    sub-int/2addr v2, v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 69
    iget v2, p0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    const/4 v5, 0x5

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    mul-int/lit8 p1, p1, 0x7

    .line 70
    invoke-virtual {v1, v5, p1}, Ljava/util/Calendar;->add(II)V

    .line 71
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ldf/calendar/model/CalendarDate;->setYear(I)V

    .line 72
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/ldf/calendar/model/CalendarDate;->setMonth(I)V

    .line 73
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ldf/calendar/model/CalendarDate;->setDay(I)V

    return-object v0
.end method

.method public setDay(I)V
    .registers 2

    .line 135
    iput p1, p0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 127
    iput p1, p0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 119
    iput p1, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
