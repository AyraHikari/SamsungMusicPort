.class public final Lcom/google/gson/JsonPrimitive;
.super Lcom/google/gson/JsonElement;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    .line 35
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Long;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Short;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Float;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Double;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Byte;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Boolean;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Character;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/gson/JsonPrimitive;->a:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Lcom/google/gson/JsonPrimitive;)Z
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 339
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    .line 340
    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of p0, p0, Ljava/lang/Byte;

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method private static b(Ljava/lang/Object;)Z
    .locals 6

    .line 278
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 282
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 283
    sget-object v0, Lcom/google/gson/JsonPrimitive;->a:[Ljava/lang/Class;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 284
    invoke-virtual {v5, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method


# virtual methods
.method public a()Ljava/lang/Number;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/gson/internal/LazilyParsedNumber;

    iget-object v1, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    :goto_0
    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .locals 1

    .line 98
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    .line 102
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    goto :goto_2

    .line 104
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_2

    .line 105
    invoke-static {p1}, Lcom/google/gson/JsonPrimitive;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 104
    :goto_1
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->a(Z)V

    .line 106
    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->n()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c()D
    .locals 2

    .line 197
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public e()I
    .locals 1

    .line 264
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 313
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 316
    :cond_1
    check-cast p1, Lcom/google/gson/JsonPrimitive;

    .line 317
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 318
    iget-object p1, p1, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 320
    :cond_3
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->a(Lcom/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/google/gson/JsonPrimitive;->a(Lcom/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 321
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->a()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->a()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 323
    :cond_5
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_8

    .line 324
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->a()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 327
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->a()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double p1, v2, v4

    if-eqz p1, :cond_7

    .line 328
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_2
    return v0

    .line 330
    :cond_8
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    :goto_3
    return v1
.end method

.method public f()Z
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->n()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    return v0

    .line 297
    :cond_0
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->a(Lcom/google/gson/JsonPrimitive;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    ushr-long v0, v2, v1

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long v0, v2, v1

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method n()Ljava/lang/Boolean;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public p()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public q()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method
