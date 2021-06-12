.class final Lcom/facebook/places/PlaceManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/places/internal/LocationPackageManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/places/PlaceManager;->newCurrentPlaceRequest(Lcom/facebook/places/model/CurrentPlaceRequestParams;Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

.field final synthetic val$requestParams:Lcom/facebook/places/model/CurrentPlaceRequestParams;


# direct methods
.method constructor <init>(Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;Lcom/facebook/places/model/CurrentPlaceRequestParams;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/facebook/places/PlaceManager$2;->val$callback:Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

    iput-object p2, p0, Lcom/facebook/places/PlaceManager$2;->val$requestParams:Lcom/facebook/places/model/CurrentPlaceRequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationPackage(Lcom/facebook/places/internal/LocationPackage;)V
    .locals 4

    .line 333
    iget-object v0, p1, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/facebook/places/PlaceManager$2;->val$callback:Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

    iget-object p1, p1, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    .line 335
    invoke-static {p1}, Lcom/facebook/places/PlaceManager;->access$000(Lcom/facebook/places/internal/ScannerException$Type;)Lcom/facebook/places/PlaceManager$LocationError;

    move-result-object p1

    .line 334
    invoke-interface {v0, p1}, Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;->onLocationError(Lcom/facebook/places/PlaceManager$LocationError;)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/facebook/places/PlaceManager$2;->val$requestParams:Lcom/facebook/places/model/CurrentPlaceRequestParams;

    invoke-static {v0, p1}, Lcom/facebook/places/PlaceManager;->access$100(Lcom/facebook/places/model/CurrentPlaceRequestParams;Lcom/facebook/places/internal/LocationPackage;)Landroid/os/Bundle;

    move-result-object p1

    .line 341
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 342
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string v2, "current_place/results"

    sget-object v3, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 346
    iget-object p1, p0, Lcom/facebook/places/PlaceManager$2;->val$callback:Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

    invoke-interface {p1, v0}, Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;->onRequestReady(Lcom/facebook/GraphRequest;)V

    :goto_0
    return-void
.end method
