.class public final enum Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/model/CurrentPlaceRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScanMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

.field public static final enum HIGH_ACCURACY:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

.field public static final enum LOW_LATENCY:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    new-instance v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    const-string v1, "HIGH_ACCURACY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->HIGH_ACCURACY:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    .line 65
    new-instance v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    const-string v1, "LOW_LATENCY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->LOW_LATENCY:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    const/4 v0, 0x2

    .line 49
    new-array v0, v0, [Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    sget-object v1, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->HIGH_ACCURACY:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->LOW_LATENCY:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->$VALUES:[Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;
    .locals 1

    .line 49
    const-class v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    return-object p0
.end method

.method public static values()[Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;
    .locals 1

    .line 49
    sget-object v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->$VALUES:[Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    invoke-virtual {v0}, [Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    return-object v0
.end method
