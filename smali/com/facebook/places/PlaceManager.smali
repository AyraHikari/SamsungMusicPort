.class public Lcom/facebook/places/PlaceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;,
        Lcom/facebook/places/PlaceManager$LocationError;
    }
.end annotation


# static fields
.field private static final CURRENT_PLACE_FEEDBACK:Ljava/lang/String; = "current_place/feedback"

.field private static final CURRENT_PLACE_RESULTS:Ljava/lang/String; = "current_place/results"

.field private static final PARAM_ACCESS_POINTS:Ljava/lang/String; = "access_points"

.field private static final PARAM_ACCURACY:Ljava/lang/String; = "accuracy"

.field private static final PARAM_ALTITUDE:Ljava/lang/String; = "altitude"

.field private static final PARAM_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field private static final PARAM_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final PARAM_CENTER:Ljava/lang/String; = "center"

.field private static final PARAM_COORDINATES:Ljava/lang/String; = "coordinates"

.field private static final PARAM_CURRENT_CONNECTION:Ljava/lang/String; = "current_connection"

.field private static final PARAM_DISTANCE:Ljava/lang/String; = "distance"

.field private static final PARAM_ENABLED:Ljava/lang/String; = "enabled"

.field private static final PARAM_FIELDS:Ljava/lang/String; = "fields"

.field private static final PARAM_FREQUENCY:Ljava/lang/String; = "frequency"

.field private static final PARAM_HEADING:Ljava/lang/String; = "heading"

.field private static final PARAM_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final PARAM_LIMIT:Ljava/lang/String; = "limit"

.field private static final PARAM_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final PARAM_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final PARAM_MIN_CONFIDENCE_LEVEL:Ljava/lang/String; = "min_confidence_level"

.field private static final PARAM_PAYLOAD:Ljava/lang/String; = "payload"

.field private static final PARAM_PLACE_ID:Ljava/lang/String; = "place_id"

.field private static final PARAM_Q:Ljava/lang/String; = "q"

.field private static final PARAM_RSSI:Ljava/lang/String; = "rssi"

.field private static final PARAM_SCANS:Ljava/lang/String; = "scans"

.field private static final PARAM_SIGNAL_STRENGTH:Ljava/lang/String; = "signal_strength"

.field private static final PARAM_SPEED:Ljava/lang/String; = "speed"

.field private static final PARAM_SSID:Ljava/lang/String; = "ssid"

.field private static final PARAM_SUMMARY:Ljava/lang/String; = "summary"

.field private static final PARAM_TRACKING:Ljava/lang/String; = "tracking"

.field private static final PARAM_TYPE:Ljava/lang/String; = "type"

.field private static final PARAM_WAS_HERE:Ljava/lang/String; = "was_here"

.field private static final PARAM_WIFI:Ljava/lang/String; = "wifi"

.field private static final SEARCH:Ljava/lang/String; = "search"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/places/internal/ScannerException$Type;)Lcom/facebook/places/PlaceManager$LocationError;
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/facebook/places/PlaceManager;->getLocationError(Lcom/facebook/places/internal/ScannerException$Type;)Lcom/facebook/places/PlaceManager$LocationError;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/places/model/CurrentPlaceRequestParams;Lcom/facebook/places/internal/LocationPackage;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .line 57
    invoke-static {p0, p1}, Lcom/facebook/places/PlaceManager;->getCurrentPlaceParameters(Lcom/facebook/places/model/CurrentPlaceRequestParams;Lcom/facebook/places/internal/LocationPackage;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static getCurrentPlaceParameters(Lcom/facebook/places/model/CurrentPlaceRequestParams;Lcom/facebook/places/internal/LocationPackage;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    if-eqz p0, :cond_11

    if-nez p1, :cond_0

    .line 398
    new-instance p1, Lcom/facebook/places/internal/LocationPackage;

    invoke-direct {p1}, Lcom/facebook/places/internal/LocationPackage;-><init>()V

    .line 400
    :cond_0
    iget-object v0, p1, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/facebook/places/model/CurrentPlaceRequestParams;->getLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p1, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;

    .line 403
    :cond_1
    iget-object v0, p1, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;

    if-eqz v0, :cond_10

    .line 408
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "summary"

    const-string v2, "tracking"

    .line 409
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/facebook/places/model/CurrentPlaceRequestParams;->getLimit()I

    move-result v1

    if-lez v1, :cond_2

    const-string v2, "limit"

    .line 412
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/places/model/CurrentPlaceRequestParams;->getFields()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 415
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "fields"

    const-string v3, ","

    .line 416
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_3
    iget-object v1, p1, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;

    .line 421
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "latitude"

    .line 422
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "longitude"

    .line 423
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 424
    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "accuracy"

    .line 425
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 427
    :cond_4
    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "altitude"

    .line 428
    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 430
    :cond_5
    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "heading"

    .line 431
    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 433
    :cond_6
    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "speed"

    .line 434
    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_7
    const-string v1, "coordinates"

    .line 436
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/facebook/places/model/CurrentPlaceRequestParams;->getMinConfidenceLevel()Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    move-result-object p0

    .line 440
    sget-object v1, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->LOW:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    if-eq p0, v1, :cond_8

    sget-object v1, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->MEDIUM:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    if-eq p0, v1, :cond_8

    sget-object v1, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->HIGH:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    if-ne p0, v1, :cond_9

    .line 444
    :cond_8
    invoke-virtual {p0}, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "min_confidence_level"

    .line 445
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz p1, :cond_f

    .line 450
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "enabled"

    .line 451
    iget-boolean v2, p1, Lcom/facebook/places/internal/LocationPackage;->isWifiScanningEnabled:Z

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 452
    iget-object v1, p1, Lcom/facebook/places/internal/LocationPackage;->connectedWifi:Lcom/facebook/places/internal/WifiScanResult;

    if-eqz v1, :cond_a

    const-string v2, "current_connection"

    .line 454
    invoke-static {v1}, Lcom/facebook/places/PlaceManager;->getWifiScanJson(Lcom/facebook/places/internal/WifiScanResult;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 456
    :cond_a
    iget-object v1, p1, Lcom/facebook/places/internal/LocationPackage;->ambientWifi:Ljava/util/List;

    if-eqz v1, :cond_c

    .line 458
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 459
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/places/internal/WifiScanResult;

    .line 460
    invoke-static {v3}, Lcom/facebook/places/PlaceManager;->getWifiScanJson(Lcom/facebook/places/internal/WifiScanResult;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_b
    const-string v1, "access_points"

    .line 462
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    const-string v1, "wifi"

    .line 464
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "enabled"

    .line 468
    iget-boolean v2, p1, Lcom/facebook/places/internal/LocationPackage;->isBluetoothScanningEnabled:Z

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 469
    iget-object p1, p1, Lcom/facebook/places/internal/LocationPackage;->ambientBluetoothLe:Ljava/util/List;

    if-eqz p1, :cond_e

    .line 472
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 473
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/places/internal/BluetoothScanResult;

    .line 474
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "payload"

    .line 475
    iget-object v5, v2, Lcom/facebook/places/internal/BluetoothScanResult;->payload:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "rssi"

    .line 476
    iget v2, v2, Lcom/facebook/places/internal/BluetoothScanResult;->rssi:I

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 477
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_d
    const-string p1, "scans"

    .line 479
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    const-string p1, "bluetooth"

    .line 481
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    return-object v0

    :catch_0
    move-exception p0

    .line 486
    new-instance p1, Lcom/facebook/FacebookException;

    invoke-direct {p1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 404
    :cond_10
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "A location must be specified"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 395
    :cond_11
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Request and location must be specified."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getLocationError(Lcom/facebook/places/internal/ScannerException$Type;)Lcom/facebook/places/PlaceManager$LocationError;
    .locals 1

    .line 500
    sget-object v0, Lcom/facebook/places/internal/ScannerException$Type;->PERMISSION_DENIED:Lcom/facebook/places/internal/ScannerException$Type;

    if-ne p0, v0, :cond_0

    .line 501
    sget-object p0, Lcom/facebook/places/PlaceManager$LocationError;->LOCATION_PERMISSION_DENIED:Lcom/facebook/places/PlaceManager$LocationError;

    return-object p0

    .line 502
    :cond_0
    sget-object v0, Lcom/facebook/places/internal/ScannerException$Type;->DISABLED:Lcom/facebook/places/internal/ScannerException$Type;

    if-ne p0, v0, :cond_1

    .line 503
    sget-object p0, Lcom/facebook/places/PlaceManager$LocationError;->LOCATION_SERVICES_DISABLED:Lcom/facebook/places/PlaceManager$LocationError;

    return-object p0

    .line 504
    :cond_1
    sget-object v0, Lcom/facebook/places/internal/ScannerException$Type;->TIMEOUT:Lcom/facebook/places/internal/ScannerException$Type;

    if-ne p0, v0, :cond_2

    .line 505
    sget-object p0, Lcom/facebook/places/PlaceManager$LocationError;->LOCATION_TIMEOUT:Lcom/facebook/places/PlaceManager$LocationError;

    return-object p0

    .line 507
    :cond_2
    sget-object p0, Lcom/facebook/places/PlaceManager$LocationError;->UNKNOWN_ERROR:Lcom/facebook/places/PlaceManager$LocationError;

    return-object p0
.end method

.method private static getWifiScanJson(Lcom/facebook/places/internal/WifiScanResult;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 491
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "mac_address"

    .line 492
    iget-object v2, p0, Lcom/facebook/places/internal/WifiScanResult;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ssid"

    .line 493
    iget-object v2, p0, Lcom/facebook/places/internal/WifiScanResult;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "signal_strength"

    .line 494
    iget v2, p0, Lcom/facebook/places/internal/WifiScanResult;->rssi:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "frequency"

    .line 495
    iget p0, p0, Lcom/facebook/places/internal/WifiScanResult;->frequency:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static newCurrentPlaceFeedbackRequest(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;)Lcom/facebook/GraphRequest;
    .locals 4

    .line 370
    invoke-virtual {p0}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-virtual {p0}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->getTracking()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-virtual {p0}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->wasHere()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 378
    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string v3, "tracking"

    .line 379
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "place_id"

    .line 380
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "was_here"

    .line 381
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    new-instance p0, Lcom/facebook/GraphRequest;

    .line 384
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    const-string v1, "current_place/feedback"

    sget-object v3, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    return-object p0

    .line 375
    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "tracking, placeId and wasHere must be specified."

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newCurrentPlaceRequest(Lcom/facebook/places/model/CurrentPlaceRequestParams;Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;)V
    .locals 4

    .line 313
    invoke-virtual {p0}, Lcom/facebook/places/model/CurrentPlaceRequestParams;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 314
    invoke-virtual {p0}, Lcom/facebook/places/model/CurrentPlaceRequestParams;->getScanMode()Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    move-result-object v1

    .line 316
    new-instance v2, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;

    invoke-direct {v2}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;-><init>()V

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 320
    :goto_0
    invoke-virtual {v2, v0}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->setLocationScanEnabled(Z)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;

    if-eqz v1, :cond_1

    .line 322
    sget-object v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->LOW_LATENCY:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    if-ne v1, v0, :cond_1

    .line 325
    invoke-virtual {v2, v3}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->setWifiActiveScanAllowed(Z)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;

    .line 329
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->build()Lcom/facebook/places/internal/LocationPackageRequestParams;

    move-result-object v0

    new-instance v1, Lcom/facebook/places/PlaceManager$2;

    invoke-direct {v1, p1, p0}, Lcom/facebook/places/PlaceManager$2;-><init>(Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;Lcom/facebook/places/model/CurrentPlaceRequestParams;)V

    .line 328
    invoke-static {v0, v1}, Lcom/facebook/places/internal/LocationPackageManager;->requestLocationPackage(Lcom/facebook/places/internal/LocationPackageRequestParams;Lcom/facebook/places/internal/LocationPackageManager$Listener;)V

    return-void
.end method

.method public static newPlaceInfoRequest(Lcom/facebook/places/model/PlaceInfoRequestParams;)Lcom/facebook/GraphRequest;
    .locals 4

    .line 277
    invoke-virtual {p0}, Lcom/facebook/places/model/PlaceInfoRequestParams;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 284
    invoke-virtual {p0}, Lcom/facebook/places/model/PlaceInfoRequestParams;->getFields()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 285
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fields"

    const-string v3, ","

    .line 286
    invoke-static {v3, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    new-instance p0, Lcom/facebook/GraphRequest;

    .line 290
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    sget-object v3, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    return-object p0

    .line 279
    :cond_1
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "placeId must be specified."

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newPlaceSearchRequest(Lcom/facebook/places/model/PlaceSearchRequestParams;Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;)V
    .locals 2

    .line 167
    new-instance v0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;

    invoke-direct {v0}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;-><init>()V

    const/4 v1, 0x0

    .line 168
    invoke-virtual {v0, v1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->setWifiScanEnabled(Z)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;

    .line 169
    invoke-virtual {v0, v1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->setBluetoothScanEnabled(Z)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;

    .line 172
    invoke-virtual {v0}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->build()Lcom/facebook/places/internal/LocationPackageRequestParams;

    move-result-object v0

    new-instance v1, Lcom/facebook/places/PlaceManager$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/places/PlaceManager$1;-><init>(Lcom/facebook/places/model/PlaceSearchRequestParams;Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;)V

    .line 171
    invoke-static {v0, v1}, Lcom/facebook/places/internal/LocationPackageManager;->requestLocationPackage(Lcom/facebook/places/internal/LocationPackageRequestParams;Lcom/facebook/places/internal/LocationPackageManager$Listener;)V

    return-void
.end method

.method public static newPlaceSearchRequestForLocation(Lcom/facebook/places/model/PlaceSearchRequestParams;Landroid/location/Location;)Lcom/facebook/GraphRequest;
    .locals 12

    .line 208
    invoke-virtual {p0}, Lcom/facebook/places/model/PlaceSearchRequestParams;->getSearchText()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Either location or searchText must be specified."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/places/model/PlaceSearchRequestParams;->getLimit()I

    move-result v1

    .line 213
    invoke-virtual {p0}, Lcom/facebook/places/model/PlaceSearchRequestParams;->getFields()Ljava/util/Set;

    move-result-object v2

    .line 214
    invoke-virtual {p0}, Lcom/facebook/places/model/PlaceSearchRequestParams;->getCategories()Ljava/util/Set;

    move-result-object v3

    .line 216
    new-instance v4, Landroid/os/Bundle;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(I)V

    const-string v5, "type"

    const-string v6, "place"

    .line 217
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v5, "center"

    .line 220
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%f,%f"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 225
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 226
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v8, v9

    .line 222
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/facebook/places/model/PlaceSearchRequestParams;->getDistance()I

    move-result p0

    if-lez p0, :cond_2

    const-string p1, "distance"

    .line 230
    invoke-virtual {v4, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    if-lez v1, :cond_3

    const-string p0, "limit"

    .line 234
    invoke-virtual {v4, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    :cond_3
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "q"

    .line 237
    invoke-virtual {v4, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v3, :cond_6

    .line 239
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    .line 240
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 241
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_5
    const-string p1, "categories"

    .line 244
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_7

    .line 246
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    const-string p0, "fields"

    const-string p1, ","

    .line 247
    invoke-static {p1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_7
    new-instance p0, Lcom/facebook/GraphRequest;

    .line 251
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    const-string v0, "search"

    sget-object v1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {p0, p1, v0, v4, v1}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    return-object p0
.end method
