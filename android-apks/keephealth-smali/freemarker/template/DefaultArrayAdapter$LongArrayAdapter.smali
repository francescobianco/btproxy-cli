.class Lfreemarker/template/DefaultArrayAdapter$LongArrayAdapter;
.super Lfreemarker/template/DefaultArrayAdapter;
.source "DefaultArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/DefaultArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongArrayAdapter"
.end annotation


# instance fields
.field private final array:[J


# direct methods
.method private constructor <init>([JLfreemarker/template/ObjectWrapper;)V
    .registers 4

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, p2, v0}, Lfreemarker/template/DefaultArrayAdapter;-><init>(Lfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V

    .line 202
    iput-object p1, p0, Lfreemarker/template/DefaultArrayAdapter$LongArrayAdapter;->array:[J

    return-void
.end method

.method synthetic constructor <init>([JLfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V
    .registers 4

    .line 196
    invoke-direct {p0, p1, p2}, Lfreemarker/template/DefaultArrayAdapter$LongArrayAdapter;-><init>([JLfreemarker/template/ObjectWrapper;)V

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-ltz p1, :cond_12

    .line 206
    iget-object v0, p0, Lfreemarker/template/DefaultArrayAdapter$LongArrayAdapter;->array:[J

    array-length v1, v0

    if-ge p1, v1, :cond_12

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/template/DefaultArrayAdapter$LongArrayAdapter;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .registers 2

    .line 214
    iget-object v0, p0, Lfreemarker/template/DefaultArrayAdapter$LongArrayAdapter;->array:[J

    return-object v0
.end method

.method public size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lfreemarker/template/DefaultArrayAdapter$LongArrayAdapter;->array:[J

    array-length v0, v0

    return v0
.end method
