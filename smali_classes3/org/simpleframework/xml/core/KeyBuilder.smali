.class Lorg/simpleframework/xml/core/KeyBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/KeyBuilder$Key;,
        Lorg/simpleframework/xml/core/KeyBuilder$KeyType;
    }
.end annotation


# instance fields
.field private final a:Lorg/simpleframework/xml/core/Label;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Label;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/simpleframework/xml/core/KeyBuilder;->a:Lorg/simpleframework/xml/core/Label;

    return-void
.end method

.method private a(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder;->a:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->b()[Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/KeyBuilder;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 82
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/KeyBuilder$Key;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/KeyBuilder$Key;-><init>(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;Ljava/lang/String;)V

    return-object v1
.end method

.method private a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    array-length v1, p1

    if-lez v1, :cond_0

    .line 99
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 101
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e

    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder;->a:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lorg/simpleframework/xml/core/KeyBuilder$KeyType;->ATTRIBUTE:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/KeyBuilder;->a(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    sget-object v0, Lorg/simpleframework/xml/core/KeyBuilder$KeyType;->ELEMENT:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/KeyBuilder;->a(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
