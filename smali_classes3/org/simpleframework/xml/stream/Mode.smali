.class public final enum Lorg/simpleframework/xml/stream/Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/simpleframework/xml/stream/Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/simpleframework/xml/stream/Mode;

.field public static final enum DATA:Lorg/simpleframework/xml/stream/Mode;

.field public static final enum ESCAPE:Lorg/simpleframework/xml/stream/Mode;

.field public static final enum INHERIT:Lorg/simpleframework/xml/stream/Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    new-instance v0, Lorg/simpleframework/xml/stream/Mode;

    const-string v1, "DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/stream/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simpleframework/xml/stream/Mode;->DATA:Lorg/simpleframework/xml/stream/Mode;

    .line 44
    new-instance v0, Lorg/simpleframework/xml/stream/Mode;

    const-string v1, "ESCAPE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/simpleframework/xml/stream/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simpleframework/xml/stream/Mode;->ESCAPE:Lorg/simpleframework/xml/stream/Mode;

    .line 49
    new-instance v0, Lorg/simpleframework/xml/stream/Mode;

    const-string v1, "INHERIT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/simpleframework/xml/stream/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simpleframework/xml/stream/Mode;->INHERIT:Lorg/simpleframework/xml/stream/Mode;

    const/4 v0, 0x3

    .line 34
    new-array v0, v0, [Lorg/simpleframework/xml/stream/Mode;

    sget-object v1, Lorg/simpleframework/xml/stream/Mode;->DATA:Lorg/simpleframework/xml/stream/Mode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/simpleframework/xml/stream/Mode;->ESCAPE:Lorg/simpleframework/xml/stream/Mode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/simpleframework/xml/stream/Mode;->INHERIT:Lorg/simpleframework/xml/stream/Mode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/simpleframework/xml/stream/Mode;->$VALUES:[Lorg/simpleframework/xml/stream/Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Mode;
    .locals 1

    .line 34
    const-class v0, Lorg/simpleframework/xml/stream/Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/stream/Mode;

    return-object p0
.end method

.method public static values()[Lorg/simpleframework/xml/stream/Mode;
    .locals 1

    .line 34
    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->$VALUES:[Lorg/simpleframework/xml/stream/Mode;

    invoke-virtual {v0}, [Lorg/simpleframework/xml/stream/Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/simpleframework/xml/stream/Mode;

    return-object v0
.end method
