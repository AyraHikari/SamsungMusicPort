.class public final enum Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/model/CurrentPlaceRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfidenceLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

.field public static final enum HIGH:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

.field public static final enum LOW:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

.field public static final enum MEDIUM:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->LOW:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    .line 42
    new-instance v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    const-string v1, "MEDIUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->MEDIUM:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    .line 43
    new-instance v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->HIGH:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    const/4 v0, 0x3

    .line 40
    new-array v0, v0, [Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    sget-object v1, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->LOW:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->MEDIUM:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->HIGH:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->$VALUES:[Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;
    .locals 1

    .line 40
    const-class v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    return-object p0
.end method

.method public static values()[Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;
    .locals 1

    .line 40
    sget-object v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->$VALUES:[Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    invoke-virtual {v0}, [Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    return-object v0
.end method
