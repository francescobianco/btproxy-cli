.class public Lcom/keephealth/android/model/bean/WeatherNext;
.super Ljava/lang/Object;
.source "WeatherNext.java"


# instance fields
.field private humidity:I

.field private iconDay:I

.field private iconNight:I

.field private pressure:I

.field private temp_max:I

.field private temp_min:I

.field private uvIndex:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHumidity()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/keephealth/android/model/bean/WeatherNext;->humidity:I

    return v0
.end method

.method public getIconDay()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/keephealth/android/model/bean/WeatherNext;->iconDay:I

    return v0
.end method

.method public getIconNight()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/keephealth/android/model/bean/WeatherNext;->iconNight:I

    return v0
.end method

.method public getPressure()I
    .registers 2

    .line 61
    iget v0, p0, Lcom/keephealth/android/model/bean/WeatherNext;->pressure:I

    return v0
.end method

.method public getTemp_max()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/keephealth/android/model/bean/WeatherNext;->temp_max:I

    return v0
.end method

.method public getTemp_min()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/keephealth/android/model/bean/WeatherNext;->temp_min:I

    return v0
.end method

.method public getUvIndex()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/keephealth/android/model/bean/WeatherNext;->uvIndex:I

    return v0
.end method

.method public setHumidity(I)V
    .registers 2

    .line 57
    iput p1, p0, Lcom/keephealth/android/model/bean/WeatherNext;->humidity:I

    return-void
.end method

.method public setIconDay(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/keephealth/android/model/bean/WeatherNext;->iconDay:I

    return-void
.end method

.method public setIconNight(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/keephealth/android/model/bean/WeatherNext;->iconNight:I

    return-void
.end method

.method public setPressure(I)V
    .registers 2

    .line 65
    iput p1, p0, Lcom/keephealth/android/model/bean/WeatherNext;->pressure:I

    return-void
.end method

.method public setTemp_max(I)V
    .registers 2

    .line 17
    iput p1, p0, Lcom/keephealth/android/model/bean/WeatherNext;->temp_max:I

    return-void
.end method

.method public setTemp_min(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcom/keephealth/android/model/bean/WeatherNext;->temp_min:I

    return-void
.end method

.method public setUvIndex(I)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/keephealth/android/model/bean/WeatherNext;->uvIndex:I

    return-void
.end method
