.class Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;
.super Ljava/util/ArrayList;
.source "SignatureBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/SignatureBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I
    .locals 0

    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->width()I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I
    .locals 0

    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->height()I

    move-result p0

    return p0
.end method

.method private height()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->width()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method private width()I
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object p1

    return-object p1
.end method

.method public get(II)Lorg/simpleframework/xml/core/Parameter;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/simpleframework/xml/core/Parameter;

    return-object p1
.end method

.method public get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-gt v0, p1, :cond_0

    .line 3
    new-instance v1, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    invoke-direct {v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    return-object p1
.end method

.method public insert(Lorg/simpleframework/xml/core/Parameter;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
