.class public Lcom/keephealth/android/model/bean/WeatherResult;
.super Ljava/lang/Object;
.source "WeatherResult.java"


# instance fields
.field private adminArea:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private cityId:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private parentCity:Ljava/lang/String;

.field private temp:I

.field private weatherConditionCode:I

.field private weatherConditionTxt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdminArea()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/keephealth/android/model/bean/WeatherResult;->adminArea:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/keephealth/android/model/bean/WeatherResult;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/model/bean/WeatherResult;->cityId:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/keephealth/android/model/bean/WeatherResult;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getParentCity()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/model/bean/WeatherResult;->parentCity:Ljava/lang/String;

    return-object v0
.end method

.method public getTemp()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/keephealth/android/model/bean/WeatherResult;->temp:I

    return v0
.end method

.method public getWeatherConditionCode()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/keephealth/android/model/bean/WeatherResult;->weatherConditionCode:I

    return v0
.end method

.method public getWeatherConditionTxt()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/model/bean/WeatherResult;->weatherConditionTxt:Ljava/lang/String;

    return-object v0
.end method

.method public setAdminArea(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/keephealth/android/model/bean/WeatherResult;->adminArea:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/keephealth/android/model/bean/WeatherResult;->city:Ljava/lang/String;

    return-void
.end method

.method public setCityId(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/keephealth/android/model/bean/WeatherResult;->cityId:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/keephealth/android/model/bean/WeatherResult;->country:Ljava/lang/String;

    return-void
.end method

.method public setParentCity(Ljava/lang/String;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/keephealth/android/model/bean/WeatherResult;->parentCity:Ljava/lang/String;

    return-void
.end method

.method public setTemp(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/keephealth/android/model/bean/WeatherResult;->temp:I

    return-void
.end method

.method public setWeatherConditionCode(I)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/keephealth/android/model/bean/WeatherResult;->weatherConditionCode:I

    return-void
.end method

.method public setWeatherConditionTxt(Ljava/lang/String;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/keephealth/android/model/bean/WeatherResult;->weatherConditionTxt:Ljava/lang/String;

    return-void
.end method
