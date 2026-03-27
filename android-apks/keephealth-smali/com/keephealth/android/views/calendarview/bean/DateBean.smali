.class public Lcom/keephealth/android/views/calendarview/bean/DateBean;
.super Ljava/lang/Object;
.source "DateBean.java"


# instance fields
.field private isToday:Z

.field private lunarHoliday:Ljava/lang/String;

.field private solarDate:J

.field private solarDay:I

.field private solarHoliday:Ljava/lang/String;

.field private solarMonth:I

.field private solarYear:I

.field private term:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLunarHoliday()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->lunarHoliday:Ljava/lang/String;

    return-object v0
.end method

.method public getSolarDate()J
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->solarDate:J

    return-wide v0
.end method

.method public getSolarDay()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->solarDay:I

    return v0
.end method

.method public getSolarHoliday()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->solarHoliday:Ljava/lang/String;

    return-object v0
.end method

.method public getSolarMonth()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->solarMonth:I

    return v0
.end method

.method public getSolarYear()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->solarYear:I

    return v0
.end method

.method public getTerm()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->term:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->type:I

    return v0
.end method

.method public isToday()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->isToday:Z

    return v0
.end method

.method public setLunarHoliday(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->lunarHoliday:Ljava/lang/String;

    return-void
.end method

.method public setSolarDate(J)V
    .registers 3

    .line 76
    iput-wide p1, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->solarDate:J

    return-void
.end method

.method public setSolarDay(I)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->solarDay:I

    return-void
.end method

.method public setSolarHoliday(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->solarHoliday:Ljava/lang/String;

    return-void
.end method

.method public setSolarMonth(I)V
    .registers 2

    .line 28
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->solarMonth:I

    return-void
.end method

.method public setSolarYear(I)V
    .registers 2

    .line 20
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->solarYear:I

    return-void
.end method

.method public setTerm(Ljava/lang/String;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->term:Ljava/lang/String;

    return-void
.end method

.method public setToday(Z)V
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->isToday:Z

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/DateBean;->type:I

    return-void
.end method
