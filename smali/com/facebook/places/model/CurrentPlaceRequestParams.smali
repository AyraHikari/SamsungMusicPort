.class public Lcom/facebook/places/model/CurrentPlaceRequestParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;,
        Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;,
        Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;
    }
.end annotation


# instance fields
.field private final fields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final limit:I

.field private final location:Landroid/location/Location;

.field private final minConfidenceLevel:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

.field private final scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;


# direct methods
.method private constructor <init>(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->fields:Ljava/util/Set;

    .line 75
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->access$000(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->location:Landroid/location/Location;

    .line 76
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->access$100(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    .line 77
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->access$200(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->minConfidenceLevel:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    .line 78
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->access$300(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->limit:I

    .line 79
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->fields:Ljava/util/Set;

    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->access$400(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;Lcom/facebook/places/model/CurrentPlaceRequestParams$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams;-><init>(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)V

    return-void
.end method


# virtual methods
.method public getFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->fields:Ljava/util/Set;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->limit:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getMinConfidenceLevel()Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->minConfidenceLevel:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    return-object v0
.end method

.method public getScanMode()Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    return-object v0
.end method
