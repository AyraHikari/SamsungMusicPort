.class public Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private placeId:Ljava/lang/String;

.field private tracking:Ljava/lang/String;

.field private wasHere:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->tracking:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->placeId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->wasHere:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;
    .locals 2

    .line 119
    new-instance v0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;-><init>(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$1;)V

    return-object v0
.end method

.method public setPlaceId(Ljava/lang/String;)Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->placeId:Ljava/lang/String;

    return-object p0
.end method

.method public setTracking(Ljava/lang/String;)Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->tracking:Ljava/lang/String;

    return-object p0
.end method

.method public setWasHere(Z)Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;
    .locals 0

    .line 87
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->wasHere:Ljava/lang/Boolean;

    return-object p0
.end method
