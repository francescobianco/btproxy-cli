.class final Lfreemarker/template/FalseTemplateBooleanModel;
.super Ljava/lang/Object;
.source "FalseTemplateBooleanModel.java"

# interfaces
.implements Lfreemarker/template/SerializableTemplateBooleanModel;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 32
    sget-object v0, Lfreemarker/template/FalseTemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    return-object v0
.end method


# virtual methods
.method public getAsBoolean()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
