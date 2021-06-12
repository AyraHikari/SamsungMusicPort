.class public Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;
    }
.end annotation


# instance fields
.field private final placeId:Ljava/lang/String;

.field private final tracking:Ljava/lang/String;

.field private final wasHere:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->access$000(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->tracking:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->access$100(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->placeId:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->access$200(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->wasHere:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;-><init>(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)V

    return-void
.end method


# virtual methods
.method public getPlaceId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTracking()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->tracking:Ljava/lang/String;

    return-object v0
.end method

.method public wasHere()Ljava/lang/Boolean;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->wasHere:Ljava/lang/Boolean;

    return-object v0
.end method
