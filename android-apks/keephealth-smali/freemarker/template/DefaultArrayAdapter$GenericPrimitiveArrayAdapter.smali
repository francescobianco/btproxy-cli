.class Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;
.super Lfreemarker/template/DefaultArrayAdapter;
.source "DefaultArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/DefaultArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenericPrimitiveArrayAdapter"
.end annotation


# instance fields
.field private final array:Ljava/lang/Object;

.field private final length:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)V
    .registers 4

    const/4 v0, 0x0

    .line 320
    invoke-direct {p0, p2, v0}, Lfreemarker/template/DefaultArrayAdapter;-><init>(Lfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V

    .line 321
    iput-object p1, p0, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;->array:Ljava/lang/Object;

    .line 322
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;->length:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V
    .registers 4

    .line 314
    invoke-direct {p0, p1, p2}, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;-><init>(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)V

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-ltz p1, :cond_11

    .line 326
    iget v0, p0, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;->length:I

    if-ge p1, v0, :cond_11

    iget-object v0, p0, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;->array:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .registers 2

    .line 334
    iget-object v0, p0, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;->array:Ljava/lang/Object;

    return-object v0
.end method

.method public size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 330
    iget v0, p0, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;->length:I

    return v0
.end method
