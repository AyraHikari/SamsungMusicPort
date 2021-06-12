.class public final enum Lorg/simpleframework/xml/stream/Verbosity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/simpleframework/xml/stream/Verbosity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/simpleframework/xml/stream/Verbosity;

.field public static final enum HIGH:Lorg/simpleframework/xml/stream/Verbosity;

.field public static final enum LOW:Lorg/simpleframework/xml/stream/Verbosity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lorg/simpleframework/xml/stream/Verbosity;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/stream/Verbosity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simpleframework/xml/stream/Verbosity;->HIGH:Lorg/simpleframework/xml/stream/Verbosity;

    .line 42
    new-instance v0, Lorg/simpleframework/xml/stream/Verbosity;

    const-string v1, "LOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/simpleframework/xml/stream/Verbosity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simpleframework/xml/stream/Verbosity;->LOW:Lorg/simpleframework/xml/stream/Verbosity;

    const/4 v0, 0x2

    .line 32
    new-array v0, v0, [Lorg/simpleframework/xml/stream/Verbosity;

    sget-object v1, Lorg/simpleframework/xml/stream/Verbosity;->HIGH:Lorg/simpleframework/xml/stream/Verbosity;

    aput-object v1, v0, v2

    sget-object v1, Lorg/simpleframework/xml/stream/Verbosity;->LOW:Lorg/simpleframework/xml/stream/Verbosity;

    aput-object v1, v0, v3

    sput-object v0, Lorg/simpleframework/xml/stream/Verbosity;->$VALUES:[Lorg/simpleframework/xml/stream/Verbosity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Verbosity;
    .locals 1

    .line 32
    const-class v0, Lorg/simpleframework/xml/stream/Verbosity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/stream/Verbosity;

    return-object p0
.end method

.method public static values()[Lorg/simpleframework/xml/stream/Verbosity;
    .locals 1

    .line 32
    sget-object v0, Lorg/simpleframework/xml/stream/Verbosity;->$VALUES:[Lorg/simpleframework/xml/stream/Verbosity;

    invoke-virtual {v0}, [Lorg/simpleframework/xml/stream/Verbosity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/simpleframework/xml/stream/Verbosity;

    return-object v0
.end method
