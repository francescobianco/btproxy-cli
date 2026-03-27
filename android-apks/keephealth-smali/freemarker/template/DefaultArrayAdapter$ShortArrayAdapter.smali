.class Lfreemarker/template/DefaultArrayAdapter$ShortArrayAdapter;
.super Lfreemarker/template/DefaultArrayAdapter;
.source "DefaultArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/DefaultArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortArrayAdapter"
.end annotation


# instance fields
.field private final array:[S


# direct methods
.method private constructor <init>([SLfreemarker/template/ObjectWrapper;)V
    .registers 4

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p2, v0}, Lfreemarker/template/DefaultArrayAdapter;-><init>(Lfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V

    .line 156
    iput-object p1, p0, Lfreemarker/template/DefaultArrayAdapter$ShortArrayAdapter;->array:[S

    return-void
.end method

.method synthetic constructor <init>([SLfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V
    .registers 4

    .line 150
    invoke-direct {p0, p1, p2}, Lfreemarker/template/DefaultArrayAdapter$ShortArrayAdapter;-><init>([SLfreemarker/template/ObjectWrapper;)V

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-ltz p1, :cond_12

    .line 160
    iget-object v0, p0, Lfreemarker/template/DefaultArrayAdapter$ShortArrayAdapter;->array:[S

    array-length v1, v0

    if-ge p1, v1, :cond_12

    aget-short p1, v0, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/template/DefaultArrayAdapter$ShortArrayAdapter;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .registers 2

    .line 168
    iget-object v0, p0, Lfreemarker/template/DefaultArrayAdapter$ShortArrayAdapter;->array:[S

    return-object v0
.end method

.method public size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lfreemarker/template/DefaultArrayAdapter$ShortArrayAdapter;->array:[S

    array-length v0, v0

    return v0
.end method
