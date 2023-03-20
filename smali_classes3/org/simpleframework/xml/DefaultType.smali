.class public final enum Lorg/simpleframework/xml/DefaultType;
.super Ljava/lang/Enum;
.source "DefaultType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/simpleframework/xml/DefaultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/simpleframework/xml/DefaultType;

.field public static final enum FIELD:Lorg/simpleframework/xml/DefaultType;

.field public static final enum PROPERTY:Lorg/simpleframework/xml/DefaultType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/simpleframework/xml/DefaultType;

    const-string v1, "FIELD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/DefaultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simpleframework/xml/DefaultType;->FIELD:Lorg/simpleframework/xml/DefaultType;

    .line 2
    new-instance v1, Lorg/simpleframework/xml/DefaultType;

    const-string v3, "PROPERTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/simpleframework/xml/DefaultType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/simpleframework/xml/DefaultType;->PROPERTY:Lorg/simpleframework/xml/DefaultType;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/simpleframework/xml/DefaultType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lorg/simpleframework/xml/DefaultType;->$VALUES:[Lorg/simpleframework/xml/DefaultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/xml/DefaultType;
    .locals 1

    const-class v0, Lorg/simpleframework/xml/DefaultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/DefaultType;

    return-object p0
.end method

.method public static values()[Lorg/simpleframework/xml/DefaultType;
    .locals 1

    sget-object v0, Lorg/simpleframework/xml/DefaultType;->$VALUES:[Lorg/simpleframework/xml/DefaultType;

    invoke-virtual {v0}, [Lorg/simpleframework/xml/DefaultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/simpleframework/xml/DefaultType;

    return-object v0
.end method
