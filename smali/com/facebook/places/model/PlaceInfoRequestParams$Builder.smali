.class public Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/model/PlaceInfoRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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

.field private placeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;->fields:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;->placeId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;)Ljava/util/Set;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;->fields:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public addField(Ljava/lang/String;)Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;->fields:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addFields([Ljava/lang/String;)Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;
    .locals 4

    .line 94
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 95
    iget-object v3, p0, Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;->fields:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Lcom/facebook/places/model/PlaceInfoRequestParams;
    .locals 2

    .line 105
    new-instance v0, Lcom/facebook/places/model/PlaceInfoRequestParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/places/model/PlaceInfoRequestParams;-><init>(Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;Lcom/facebook/places/model/PlaceInfoRequestParams$1;)V

    return-object v0
.end method

.method public setPlaceId(Ljava/lang/String;)Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;->placeId:Ljava/lang/String;

    return-object p0
.end method
