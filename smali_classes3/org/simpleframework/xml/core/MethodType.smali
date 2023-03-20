.class final enum Lorg/simpleframework/xml/core/MethodType;
.super Ljava/lang/Enum;
.source "MethodType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/simpleframework/xml/core/MethodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/simpleframework/xml/core/MethodType;

.field public static final enum GET:Lorg/simpleframework/xml/core/MethodType;

.field public static final enum IS:Lorg/simpleframework/xml/core/MethodType;

.field public static final enum NONE:Lorg/simpleframework/xml/core/MethodType;

.field public static final enum SET:Lorg/simpleframework/xml/core/MethodType;


# instance fields
.field private prefix:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/simpleframework/xml/core/MethodType;

    const-string v1, "GET"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    .line 2
    new-instance v1, Lorg/simpleframework/xml/core/MethodType;

    const-string v4, "IS"

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v1, v4, v5, v6}, Lorg/simpleframework/xml/core/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    .line 3
    new-instance v4, Lorg/simpleframework/xml/core/MethodType;

    const-string v7, "SET"

    invoke-direct {v4, v7, v6, v3}, Lorg/simpleframework/xml/core/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    .line 4
    new-instance v7, Lorg/simpleframework/xml/core/MethodType;

    const-string v8, "NONE"

    invoke-direct {v7, v8, v3, v2}, Lorg/simpleframework/xml/core/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/simpleframework/xml/core/MethodType;->NONE:Lorg/simpleframework/xml/core/MethodType;

    const/4 v8, 0x4

    new-array v8, v8, [Lorg/simpleframework/xml/core/MethodType;

    aput-object v0, v8, v2

    aput-object v1, v8, v5

    aput-object v4, v8, v6

    aput-object v7, v8, v3

    .line 5
    sput-object v8, Lorg/simpleframework/xml/core/MethodType;->$VALUES:[Lorg/simpleframework/xml/core/MethodType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lorg/simpleframework/xml/core/MethodType;->prefix:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/xml/core/MethodType;
    .locals 1

    const-class v0, Lorg/simpleframework/xml/core/MethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/core/MethodType;

    return-object p0
.end method

.method public static values()[Lorg/simpleframework/xml/core/MethodType;
    .locals 1

    sget-object v0, Lorg/simpleframework/xml/core/MethodType;->$VALUES:[Lorg/simpleframework/xml/core/MethodType;

    invoke-virtual {v0}, [Lorg/simpleframework/xml/core/MethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/simpleframework/xml/core/MethodType;

    return-object v0
.end method


# virtual methods
.method public getPrefix()I
    .locals 1

    iget v0, p0, Lorg/simpleframework/xml/core/MethodType;->prefix:I

    return v0
.end method
