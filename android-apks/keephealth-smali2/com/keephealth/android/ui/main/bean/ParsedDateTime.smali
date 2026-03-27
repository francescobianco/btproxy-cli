.class public Lcom/keephealth/android/ui/main/bean/ParsedDateTime;
.super Ljava/lang/Object;
.source "ParsedDateTime.java"


# instance fields
.field public day:I

.field public formatted:Ljava/lang/String;

.field public hour:I

.field public minute:I

.field public month:I

.field public second:I

.field public year:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDay()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->day:I

    return v0
.end method

.method public getFormatted()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->formatted:Ljava/lang/String;

    return-object v0
.end method

.method public getHour()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->hour:I

    return v0
.end method

.method public getMinute()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->minute:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->month:I

    return v0
.end method

.method public getSecond()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->second:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->year:I

    return v0
.end method

.method public setDay(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->day:I

    return-void
.end method

.method public setFormatted(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->formatted:Ljava/lang/String;

    return-void
.end method

.method public setHour(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->hour:I

    return-void
.end method

.method public setMinute(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->minute:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 27
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->month:I

    return-void
.end method

.method public setSecond(I)V
    .registers 2

    .line 59
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->second:I

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 19
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 72
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->formatted:Ljava/lang/String;

    iget v2, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->year:I

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->month:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->day:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->hour:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->minute:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->second:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 72
    const-string v2, "ParsedDateTime: %s (Y=%d M=%d D=%d H=%d m=%d s=%d)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
