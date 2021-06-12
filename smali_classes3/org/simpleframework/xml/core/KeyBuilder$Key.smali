.class Lorg/simpleframework/xml/core/KeyBuilder$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/KeyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field private final a:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->b:Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->a:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    return-void
.end method


# virtual methods
.method public a(Lorg/simpleframework/xml/core/KeyBuilder$Key;)Z
    .locals 2

    .line 179
    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->a:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    iget-object v1, p1, Lorg/simpleframework/xml/core/KeyBuilder$Key;->a:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    if-ne v0, v1, :cond_0

    .line 180
    iget-object p1, p1, Lorg/simpleframework/xml/core/KeyBuilder$Key;->b:Ljava/lang/String;

    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 162
    instance-of v0, p1, Lorg/simpleframework/xml/core/KeyBuilder$Key;

    if-eqz v0, :cond_0

    .line 163
    check-cast p1, Lorg/simpleframework/xml/core/KeyBuilder$Key;

    .line 164
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/KeyBuilder$Key;->a(Lorg/simpleframework/xml/core/KeyBuilder$Key;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->b:Ljava/lang/String;

    return-object v0
.end method
