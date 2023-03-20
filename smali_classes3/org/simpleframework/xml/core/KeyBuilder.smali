.class Lorg/simpleframework/xml/core/KeyBuilder;
.super Ljava/lang/Object;
.source "KeyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/KeyBuilder$Key;,
        Lorg/simpleframework/xml/core/KeyBuilder$KeyType;
    }
.end annotation


# instance fields
.field private final label:Lorg/simpleframework/xml/core/Label;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Label;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/simpleframework/xml/core/KeyBuilder;->label:Lorg/simpleframework/xml/core/Label;

    return-void
.end method

.method private getKey(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;)Ljava/lang/Object;
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPaths()[Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/KeyBuilder;->getKey([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 6
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/KeyBuilder$Key;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/KeyBuilder$Key;-><init>(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;Ljava/lang/String;)V

    return-object v1
.end method

.method private getKey([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    array-length v1, p1

    if-lez v1, :cond_0

    .line 9
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 10
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lorg/simpleframework/xml/core/KeyBuilder$KeyType;->ATTRIBUTE:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/KeyBuilder;->getKey(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lorg/simpleframework/xml/core/KeyBuilder$KeyType;->ELEMENT:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/KeyBuilder;->getKey(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
