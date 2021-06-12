.class public final enum Lcom/facebook/share/widget/LikeView$ObjectType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ObjectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/widget/LikeView$ObjectType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/widget/LikeView$ObjectType;

.field public static DEFAULT:Lcom/facebook/share/widget/LikeView$ObjectType;

.field public static final enum OPEN_GRAPH:Lcom/facebook/share/widget/LikeView$ObjectType;

.field public static final enum PAGE:Lcom/facebook/share/widget/LikeView$ObjectType;

.field public static final enum UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 71
    new-instance v0, Lcom/facebook/share/widget/LikeView$ObjectType;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/facebook/share/widget/LikeView$ObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 76
    new-instance v0, Lcom/facebook/share/widget/LikeView$ObjectType;

    const-string v1, "OPEN_GRAPH"

    const-string v2, "open_graph"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/facebook/share/widget/LikeView$ObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->OPEN_GRAPH:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 81
    new-instance v0, Lcom/facebook/share/widget/LikeView$ObjectType;

    const-string v1, "PAGE"

    const-string v2, "page"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/facebook/share/widget/LikeView$ObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->PAGE:Lcom/facebook/share/widget/LikeView$ObjectType;

    const/4 v0, 0x3

    .line 66
    new-array v0, v0, [Lcom/facebook/share/widget/LikeView$ObjectType;

    sget-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->OPEN_GRAPH:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->PAGE:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->$VALUES:[Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 83
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    sput-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->DEFAULT:Lcom/facebook/share/widget/LikeView$ObjectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput-object p3, p0, Lcom/facebook/share/widget/LikeView$ObjectType;->stringValue:Ljava/lang/String;

    .line 99
    iput p4, p0, Lcom/facebook/share/widget/LikeView$ObjectType;->intValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/facebook/share/widget/LikeView$ObjectType;
    .locals 5

    .line 86
    invoke-static {}, Lcom/facebook/share/widget/LikeView$ObjectType;->values()[Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 87
    invoke-virtual {v3}, Lcom/facebook/share/widget/LikeView$ObjectType;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/LikeView$ObjectType;
    .locals 1

    .line 66
    const-class v0, Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/widget/LikeView$ObjectType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/widget/LikeView$ObjectType;
    .locals 1

    .line 66
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->$VALUES:[Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v0}, [Lcom/facebook/share/widget/LikeView$ObjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/widget/LikeView$ObjectType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/facebook/share/widget/LikeView$ObjectType;->intValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView$ObjectType;->stringValue:Ljava/lang/String;

    return-object v0
.end method
