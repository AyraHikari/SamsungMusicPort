.class Lorg/simpleframework/xml/core/FieldScanner$FieldKey;
.super Ljava/lang/Object;
.source "FieldScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/FieldScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldKey"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->type:Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->name:Ljava/lang/String;

    return-void
.end method

.method private equals(Lorg/simpleframework/xml/core/FieldScanner$FieldKey;)Z
    .locals 2

    .line 3
    iget-object v0, p1, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->type:Ljava/lang/Class;

    iget-object v1, p0, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->type:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object p1, p1, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->name:Ljava/lang/String;

    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->equals(Lorg/simpleframework/xml/core/FieldScanner$FieldKey;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
