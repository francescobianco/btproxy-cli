.class Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;
.super Lfreemarker/template/DefaultArrayAdapter;
.source "DefaultArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/DefaultArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjectArrayAdapter"
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method private constructor <init>([Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)V
    .registers 4

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p2, v0}, Lfreemarker/template/DefaultArrayAdapter;-><init>(Lfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V

    .line 110
    iput-object p1, p0, Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;->array:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V
    .registers 4

    .line 104
    invoke-direct {p0, p1, p2}, Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;-><init>([Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)V

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

    if-ltz p1, :cond_e

    .line 114
    iget-object v0, p0, Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;->array:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_e

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .registers 2

    .line 122
    iget-object v0, p0, Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
