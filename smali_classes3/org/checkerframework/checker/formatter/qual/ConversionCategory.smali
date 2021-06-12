.class public final enum Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/checker/formatter/qual/ConversionCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;


# instance fields
.field public final chars:Ljava/lang/String;

.field public final types:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 33
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const-string v1, "GENERAL"

    const-string v2, "bBhHsS"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 40
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const-string v1, "CHAR"

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Character;

    aput-object v6, v5, v4

    const-class v6, Ljava/lang/Byte;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/Short;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/Integer;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const-string v6, "cC"

    invoke-direct {v0, v1, v7, v5, v6}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 46
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const-string v1, "INT"

    const/4 v5, 0x5

    new-array v6, v5, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Byte;

    aput-object v10, v6, v4

    const-class v10, Ljava/lang/Short;

    aput-object v10, v6, v7

    const-class v10, Ljava/lang/Integer;

    aput-object v10, v6, v8

    const-class v10, Ljava/lang/Long;

    aput-object v10, v6, v9

    const-class v10, Ljava/math/BigInteger;

    aput-object v10, v6, v2

    const-string v10, "doxX"

    invoke-direct {v0, v1, v8, v6, v10}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 54
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const-string v1, "FLOAT"

    new-array v6, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Float;

    aput-object v10, v6, v4

    const-class v10, Ljava/lang/Double;

    aput-object v10, v6, v7

    const-class v10, Ljava/math/BigDecimal;

    aput-object v10, v6, v8

    const-string v10, "eEfgGaA"

    invoke-direct {v0, v1, v9, v6, v10}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 60
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const-string v1, "TIME"

    new-array v6, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Long;

    aput-object v10, v6, v4

    const-class v10, Ljava/util/Calendar;

    aput-object v10, v6, v7

    const-class v10, Ljava/util/Date;

    aput-object v10, v6, v8

    const-string v10, "tT"

    invoke-direct {v0, v1, v2, v6, v10}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 80
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const-string v1, "CHAR_AND_INT"

    new-array v6, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Byte;

    aput-object v10, v6, v4

    const-class v10, Ljava/lang/Short;

    aput-object v10, v6, v7

    const-class v10, Ljava/lang/Integer;

    aput-object v10, v6, v8

    invoke-direct {v0, v1, v5, v6, v3}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 82
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const-string v1, "INT_AND_TIME"

    new-array v6, v7, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Long;

    aput-object v10, v6, v4

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v6, v3}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 94
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const-string v1, "NULL"

    new-array v6, v4, [Ljava/lang/Class;

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v6, v3}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 107
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const-string v1, "UNUSED"

    const/16 v6, 0x8

    invoke-direct {v0, v1, v6, v3, v3}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/16 v0, 0x9

    .line 31
    new-array v0, v0, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v4

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v7

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v8

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v9

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v2

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v5

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v10

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v11

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v6

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->$VALUES:[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput-object p3, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    .line 111
    iput-object p4, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->chars:Ljava/lang/String;

    return-void
.end method

.method private static arrayToSet([Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private className(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 230
    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    const-string p1, "boolean"

    return-object p1

    .line 233
    :cond_0
    const-class v0, Ljava/lang/Character;

    if-ne p1, v0, :cond_1

    const-string p1, "char"

    return-object p1

    .line 236
    :cond_1
    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_2

    const-string p1, "byte"

    return-object p1

    .line 239
    :cond_2
    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_3

    const-string p1, "short"

    return-object p1

    .line 242
    :cond_3
    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_4

    const-string p1, "int"

    return-object p1

    .line 245
    :cond_4
    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_5

    const-string p1, "long"

    return-object p1

    .line 248
    :cond_5
    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    const-string p1, "float"

    return-object p1

    .line 251
    :cond_6
    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_7

    const-string p1, "double"

    return-object p1

    .line 254
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static fromConversionChar(C)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 6

    const/4 v0, 0x5

    .line 131
    new-array v0, v0, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 132
    iget-object v4, v3, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->chars:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static intersect(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 4

    .line 159
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p0, v0, :cond_0

    return-object p1

    .line 162
    :cond_0
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p1, v0, :cond_1

    return-object p0

    .line 165
    :cond_1
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p0, v0, :cond_2

    return-object p1

    .line 168
    :cond_2
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p1, v0, :cond_3

    return-object p0

    .line 172
    :cond_3
    iget-object p0, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {p0}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    .line 173
    iget-object p1, p1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {p1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 174
    invoke-interface {p0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    const/4 p1, 0x7

    .line 176
    new-array p1, p1, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v2, 0x1

    aput-object v0, p1, v2

    const/4 v0, 0x2

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v2, p1, v0

    const/4 v0, 0x3

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v2, p1, v0

    const/4 v0, 0x4

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v2, p1, v0

    const/4 v0, 0x5

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v2, p1, v0

    const/4 v0, 0x6

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v2, p1, v0

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 179
    iget-object v3, v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v3}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 180
    invoke-interface {v3, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static isSubsetOf(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Z
    .locals 0

    .line 144
    invoke-static {p0, p1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->intersect(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static union(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 4

    .line 200
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-eq p0, v0, :cond_8

    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 203
    :cond_0
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-eq p0, v0, :cond_7

    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 206
    :cond_1
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p0, v0, :cond_2

    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-eq p1, v0, :cond_3

    :cond_2
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p0, v0, :cond_4

    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p1, v0, :cond_4

    .line 210
    :cond_3
    sget-object p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object p0

    .line 213
    :cond_4
    iget-object p0, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {p0}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    .line 214
    iget-object p1, p1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {p1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 215
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x7

    .line 217
    new-array p1, p1, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v2, 0x1

    aput-object v0, p1, v2

    const/4 v0, 0x2

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v2, p1, v0

    const/4 v0, 0x3

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v2, p1, v0

    const/4 v0, 0x4

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v2, p1, v0

    const/4 v0, 0x5

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v2, p1, v0

    const/4 v0, 0x6

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v2, p1, v0

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p1, v1

    .line 220
    iget-object v3, v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v3}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 221
    invoke-interface {v3, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_6
    sget-object p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object p0

    .line 204
    :cond_7
    :goto_1
    sget-object p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object p0

    .line 201
    :cond_8
    :goto_2
    sget-object p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 1

    .line 31
    const-class v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object p0
.end method

.method public static values()[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 1

    .line 31
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->$VALUES:[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    invoke-virtual {v0}, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " conversion category (one of: "

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v1, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    if-nez v5, :cond_0

    const-string v5, ", "

    .line 266
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_0
    invoke-direct {p0, v6}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const-string v1, ")"

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
