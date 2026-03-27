.class public Lcom/keephealth/android/util/telinkota/PropertyResolver;
.super Ljava/lang/Object;
.source "PropertyResolver.java"


# static fields
.field public static final INDICATE:Ljava/lang/String; = "indicate"

.field public static final NOTIFY:Ljava/lang/String; = "notify"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final WRITE:Ljava/lang/String; = "write"

.field public static final WRITE_NO_RESPONSE:Ljava/lang/String; = "write_no_response"


# instance fields
.field private mProp:I

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 7

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/keephealth/android/util/telinkota/PropertyResolver;->mProp:I

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/PropertyResolver;->properties:Ljava/util/Map;

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    move v1, v3

    .line 47
    :goto_15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "read"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/PropertyResolver;->properties:Ljava/util/Map;

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_26

    move v1, v2

    goto :goto_27

    :cond_26
    move v1, v3

    :goto_27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "write"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/PropertyResolver;->properties:Ljava/util/Map;

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_38

    move v1, v2

    goto :goto_39

    :cond_38
    move v1, v3

    :goto_39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "notify"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/PropertyResolver;->properties:Ljava/util/Map;

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_4a

    move v1, v2

    goto :goto_4b

    :cond_4a
    move v1, v3

    :goto_4b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "indicate"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/PropertyResolver;->properties:Ljava/util/Map;

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5b

    goto :goto_5c

    :cond_5b
    move v2, v3

    :goto_5c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "write_no_response"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/PropertyResolver;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/PropertyResolver;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public getGattCharacteristicPropDesc()Ljava/lang/String;
    .registers 3

    .line 60
    iget v0, p0, Lcom/keephealth/android/util/telinkota/PropertyResolver;->mProp:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 61
    const-string v0, " read "

    goto :goto_b

    .line 60
    :cond_9
    const-string v0, " "

    .line 62
    :goto_b
    iget v1, p0, Lcom/keephealth/android/util/telinkota/PropertyResolver;->mProp:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_24

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_24
    iget v1, p0, Lcom/keephealth/android/util/telinkota/PropertyResolver;->mProp:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3d

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "notify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_3d
    iget v1, p0, Lcom/keephealth/android/util/telinkota/PropertyResolver;->mProp:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_56

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "indicate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_56
    iget v1, p0, Lcom/keephealth/android/util/telinkota/PropertyResolver;->mProp:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6f

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "write_no_response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6f
    return-object v0
.end method
