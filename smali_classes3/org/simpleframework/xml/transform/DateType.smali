.class final enum Lorg/simpleframework/xml/transform/DateType;
.super Ljava/lang/Enum;
.source "DateType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/transform/DateType$DateFormat;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/simpleframework/xml/transform/DateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/simpleframework/xml/transform/DateType;

.field public static final enum FULL:Lorg/simpleframework/xml/transform/DateType;

.field public static final enum LONG:Lorg/simpleframework/xml/transform/DateType;

.field public static final enum NORMAL:Lorg/simpleframework/xml/transform/DateType;

.field public static final enum SHORT:Lorg/simpleframework/xml/transform/DateType;


# instance fields
.field private format:Lorg/simpleframework/xml/transform/DateType$DateFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lorg/simpleframework/xml/transform/DateType;

    const-string v1, "FULL"

    const/4 v2, 0x0

    const-string v3, "yyyy-MM-dd HH:mm:ss.S z"

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    .line 2
    new-instance v1, Lorg/simpleframework/xml/transform/DateType;

    const-string v3, "LONG"

    const/4 v4, 0x1

    const-string v5, "yyyy-MM-dd HH:mm:ss z"

    invoke-direct {v1, v3, v4, v5}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/simpleframework/xml/transform/DateType;->LONG:Lorg/simpleframework/xml/transform/DateType;

    .line 3
    new-instance v3, Lorg/simpleframework/xml/transform/DateType;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    const-string v7, "yyyy-MM-dd z"

    invoke-direct {v3, v5, v6, v7}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/simpleframework/xml/transform/DateType;->NORMAL:Lorg/simpleframework/xml/transform/DateType;

    .line 4
    new-instance v5, Lorg/simpleframework/xml/transform/DateType;

    const-string v7, "SHORT"

    const/4 v8, 0x3

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v5, v7, v8, v9}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/simpleframework/xml/transform/DateType;->SHORT:Lorg/simpleframework/xml/transform/DateType;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/simpleframework/xml/transform/DateType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lorg/simpleframework/xml/transform/DateType;->$VALUES:[Lorg/simpleframework/xml/transform/DateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance p1, Lorg/simpleframework/xml/transform/DateType$DateFormat;

    invoke-direct {p1, p3}, Lorg/simpleframework/xml/transform/DateType$DateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/simpleframework/xml/transform/DateType;->format:Lorg/simpleframework/xml/transform/DateType$DateFormat;

    return-void
.end method

.method public static getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/simpleframework/xml/transform/DateType;->getType(Ljava/lang/String;)Lorg/simpleframework/xml/transform/DateType;

    move-result-object v0

    .line 2
    invoke-direct {v0}, Lorg/simpleframework/xml/transform/DateType;->getFormat()Lorg/simpleframework/xml/transform/DateType$DateFormat;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/transform/DateType$DateFormat;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private getFormat()Lorg/simpleframework/xml/transform/DateType$DateFormat;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/transform/DateType;->format:Lorg/simpleframework/xml/transform/DateType$DateFormat;

    return-object v0
.end method

.method public static getText(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/DateType;->getFormat()Lorg/simpleframework/xml/transform/DateType$DateFormat;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/transform/DateType$DateFormat;->getText(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/lang/String;)Lorg/simpleframework/xml/transform/DateType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x17

    if-le p0, v0, :cond_0

    .line 2
    sget-object p0, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    return-object p0

    :cond_0
    const/16 v0, 0x14

    if-le p0, v0, :cond_1

    .line 3
    sget-object p0, Lorg/simpleframework/xml/transform/DateType;->LONG:Lorg/simpleframework/xml/transform/DateType;

    return-object p0

    :cond_1
    const/16 v0, 0xb

    if-le p0, v0, :cond_2

    .line 4
    sget-object p0, Lorg/simpleframework/xml/transform/DateType;->NORMAL:Lorg/simpleframework/xml/transform/DateType;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lorg/simpleframework/xml/transform/DateType;->SHORT:Lorg/simpleframework/xml/transform/DateType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/xml/transform/DateType;
    .locals 1

    const-class v0, Lorg/simpleframework/xml/transform/DateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/transform/DateType;

    return-object p0
.end method

.method public static values()[Lorg/simpleframework/xml/transform/DateType;
    .locals 1

    sget-object v0, Lorg/simpleframework/xml/transform/DateType;->$VALUES:[Lorg/simpleframework/xml/transform/DateType;

    invoke-virtual {v0}, [Lorg/simpleframework/xml/transform/DateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/simpleframework/xml/transform/DateType;

    return-object v0
.end method
