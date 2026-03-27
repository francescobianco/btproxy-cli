.class public Lcom/keephealth/android/ui/main/bean/Stroke;
.super Ljava/lang/Object;
.source "Stroke.java"


# instance fields
.field private code:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "c"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "n"
    .end annotation
.end field

.field private order:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "o"
    .end annotation
.end field

.field private strokeSum:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "s"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/Stroke;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/Stroke;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/Stroke;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getStrokeSum()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/Stroke;->strokeSum:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/Stroke;->code:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/Stroke;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/Stroke;->order:Ljava/lang/String;

    return-void
.end method

.method public setStrokeSum(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/Stroke;->strokeSum:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stroke{order=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/main/bean/Stroke;->order:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/bean/Stroke;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/bean/Stroke;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', strokeSum=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/bean/Stroke;->strokeSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
