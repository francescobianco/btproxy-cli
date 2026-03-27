.class public Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;
.super Ljava/lang/Object;
.source "CalendarEventsRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/CalendarEventsRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarEvent"
.end annotation


# instance fields
.field public descrition:Ljava/lang/String;

.field public displayDate:Ljava/lang/String;

.field public endDay:I

.field public endHour:I

.field public endMinute:I

.field public endMonth:I

.field public endTime:Ljava/lang/String;

.field public endTimeL:J

.field public endYear:I

.field public id:J

.field public isCustom:Z

.field public location:Ljava/lang/String;

.field public rrule:Ljava/lang/String;

.field public startDay:I

.field public startHour:I

.field public startMinute:I

.field public startMonth:I

.field public startTime:Ljava/lang/String;

.field public startTimeL:J

.field public startYear:I

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescrition()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->descrition:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayDate()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->displayDate:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDay()I
    .registers 2

    .line 201
    iget v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->endDay:I

    return v0
.end method

.method public getEndHour()I
    .registers 2

    .line 209
    iget v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->endHour:I

    return v0
.end method

.method public getEndMinute()I
    .registers 2

    .line 217
    iget v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->endMinute:I

    return v0
.end method

.method public getEndMonth()I
    .registers 2

    .line 193
    iget v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->endMonth:I

    return v0
.end method

.method public getEndTime()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEndYear()I
    .registers 2

    .line 185
    iget v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->endYear:I

    return v0
.end method

.method public getId()J
    .registers 3

    .line 81
    iget-wide v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->id:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getRrule()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->rrule:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDay()I
    .registers 2

    .line 161
    iget v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startDay:I

    return v0
.end method

.method public getStartHour()I
    .registers 2

    .line 169
    iget v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startHour:I

    return v0
.end method

.method public getStartMinute()I
    .registers 2

    .line 177
    iget v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startMinute:I

    return v0
.end method

.method public getStartMonth()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startMonth:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStartYear()I
    .registers 2

    .line 145
    iget v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startYear:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isCustom()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->isCustom:Z

    return v0
.end method

.method public setCustom(Z)V
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->isCustom:Z

    return-void
.end method

.method public setDescrition(Ljava/lang/String;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->descrition:Ljava/lang/String;

    return-void
.end method

.method public setDisplayDate(Ljava/lang/String;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->displayDate:Ljava/lang/String;

    return-void
.end method

.method public setEndDay(I)V
    .registers 2

    .line 205
    iput p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->endDay:I

    return-void
.end method

.method public setEndHour(I)V
    .registers 2

    .line 213
    iput p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->endHour:I

    return-void
.end method

.method public setEndMinute(I)V
    .registers 2

    .line 221
    iput p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->endMinute:I

    return-void
.end method

.method public setEndMonth(I)V
    .registers 2

    .line 197
    iput p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->endMonth:I

    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setEndYear(I)V
    .registers 2

    .line 189
    iput p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->endYear:I

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 85
    iput-wide p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->id:J

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->location:Ljava/lang/String;

    return-void
.end method

.method public setRrule(Ljava/lang/String;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->rrule:Ljava/lang/String;

    return-void
.end method

.method public setStartDay(I)V
    .registers 2

    .line 165
    iput p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startDay:I

    return-void
.end method

.method public setStartHour(I)V
    .registers 2

    .line 173
    iput p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startHour:I

    return-void
.end method

.method public setStartMinute(I)V
    .registers 2

    .line 181
    iput p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startMinute:I

    return-void
.end method

.method public setStartMonth(I)V
    .registers 2

    .line 157
    iput p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startMonth:I

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setStartYear(I)V
    .registers 2

    .line 149
    iput p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->startYear:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->displayDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->rrule:Ljava/lang/String;

    if-eqz v1, :cond_3b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", Recurrence: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->rrule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    :cond_3b
    const-string v1, ""

    :goto_3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
