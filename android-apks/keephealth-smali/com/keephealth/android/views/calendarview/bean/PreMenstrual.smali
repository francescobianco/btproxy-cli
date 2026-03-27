.class public Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
.super Ljava/lang/Object;
.source "PreMenstrual.java"


# instance fields
.field private calendarEndMonth:I

.field private calendarEndYear:I

.field private calendarStartMonthr:I

.field private calendarStartYear:I

.field private defultDuration:I

.field private menstrualCycle:I

.field private menstrualDuration:I

.field private startMenstrualDay:I

.field private startMenstrualMonth:I

.field private startMenstrualYear:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 14
    iput v0, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->defultDuration:I

    return-void
.end method

.method public constructor <init>(IIIIIIIIII)V
    .registers 11

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->startMenstrualYear:I

    .line 31
    iput p2, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->startMenstrualMonth:I

    .line 32
    iput p3, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->startMenstrualDay:I

    .line 33
    iput p4, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->menstrualCycle:I

    .line 34
    iput p5, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->menstrualDuration:I

    .line 35
    iput p6, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->defultDuration:I

    .line 36
    iput p7, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->calendarStartYear:I

    .line 37
    iput p8, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->calendarStartMonthr:I

    .line 38
    iput p9, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->calendarEndYear:I

    .line 39
    iput p10, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->calendarEndMonth:I

    return-void
.end method


# virtual methods
.method public getCalendarEndMonth()I
    .registers 2

    .line 115
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->calendarEndMonth:I

    return v0
.end method

.method public getCalendarEndYear()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->calendarEndYear:I

    return v0
.end method

.method public getCalendarStartMonthr()I
    .registers 2

    .line 107
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->calendarStartMonthr:I

    return v0
.end method

.method public getCalendarStartYear()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->calendarStartYear:I

    return v0
.end method

.method public getDefultDuration()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->defultDuration:I

    return v0
.end method

.method public getMenstrualCycle()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->menstrualCycle:I

    return v0
.end method

.method public getMenstrualDuration()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->menstrualDuration:I

    return v0
.end method

.method public getStartMenstrualDay()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->startMenstrualDay:I

    return v0
.end method

.method public getStartMenstrualMonth()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->startMenstrualMonth:I

    return v0
.end method

.method public getStartMenstrualYear()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->startMenstrualYear:I

    return v0
.end method

.method public setCalendarEndMonth(I)V
    .registers 2

    .line 119
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->calendarEndMonth:I

    return-void
.end method

.method public setCalendarEndYear(I)V
    .registers 2

    .line 99
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->calendarEndYear:I

    return-void
.end method

.method public setCalendarStartMonthr(I)V
    .registers 2

    .line 111
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->calendarStartMonthr:I

    return-void
.end method

.method public setCalendarStartYear(I)V
    .registers 2

    .line 91
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->calendarStartYear:I

    return-void
.end method

.method public setDefultDuration(I)V
    .registers 2

    .line 83
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->defultDuration:I

    return-void
.end method

.method public setMenstrualCycle(I)V
    .registers 2

    .line 71
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->menstrualCycle:I

    return-void
.end method

.method public setMenstrualDuration(I)V
    .registers 2

    .line 103
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->menstrualDuration:I

    return-void
.end method

.method public setStartMenstrualDay(I)V
    .registers 2

    .line 63
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->startMenstrualDay:I

    return-void
.end method

.method public setStartMenstrualMonth(I)V
    .registers 2

    .line 55
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->startMenstrualMonth:I

    return-void
.end method

.method public setStartMenstrualYear(I)V
    .registers 2

    .line 47
    iput p1, p0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->startMenstrualYear:I

    return-void
.end method
