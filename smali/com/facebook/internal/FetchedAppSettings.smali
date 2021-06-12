.class public final Lcom/facebook/internal/FetchedAppSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    }
.end annotation


# instance fields
.field private IAPAutomaticLoggingEnabled:Z

.field private automaticLoggingEnabled:Z

.field private codelessEventsEnabled:Z

.field private customTabsEnabled:Z

.field private dialogConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

.field private eventBindings:Lorg/json/JSONArray;

.field private nuxContent:Ljava/lang/String;

.field private nuxEnabled:Z

.field private sdkUpdateMessage:Ljava/lang/String;

.field private sessionTimeoutInSeconds:I

.field private smartLoginBookmarkIconURL:Ljava/lang/String;

.field private smartLoginMenuIconURL:Ljava/lang/String;

.field private smartLoginOptions:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;"
        }
    .end annotation
.end field

.field private supportsImplicitLogging:Z

.field private trackUninstallEnabled:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;Z",
            "Lcom/facebook/internal/FacebookRequestErrorClassification;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 71
    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging:Z

    move-object v1, p2

    .line 72
    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->nuxContent:Ljava/lang/String;

    move v1, p3

    .line 73
    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->nuxEnabled:Z

    move v1, p4

    .line 74
    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->customTabsEnabled:Z

    move-object v1, p7

    .line 75
    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->dialogConfigMap:Ljava/util/Map;

    move-object v1, p9

    .line 76
    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

    move v1, p5

    .line 77
    iput v1, v0, Lcom/facebook/internal/FetchedAppSettings;->sessionTimeoutInSeconds:I

    move v1, p8

    .line 78
    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->automaticLoggingEnabled:Z

    move-object v1, p6

    .line 79
    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginOptions:Ljava/util/EnumSet;

    move-object v1, p10

    .line 80
    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginBookmarkIconURL:Ljava/lang/String;

    move-object v1, p11

    .line 81
    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginMenuIconURL:Ljava/lang/String;

    move v1, p12

    .line 82
    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->IAPAutomaticLoggingEnabled:Z

    move v1, p13

    .line 83
    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->codelessEventsEnabled:Z

    move-object/from16 v1, p14

    .line 84
    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->eventBindings:Lorg/json/JSONArray;

    move-object/from16 v1, p15

    .line 85
    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->sdkUpdateMessage:Ljava/lang/String;

    move/from16 v1, p16

    .line 86
    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->trackUninstallEnabled:Z

    return-void
.end method

.method public static getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    .locals 2

    .line 255
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/facebook/internal/FetchedAppSettings;->getDialogConfigurations()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_1

    .line 265
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    return-object p0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method public getAutomaticLoggingEnabled()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->automaticLoggingEnabled:Z

    return v0
.end method

.method public getCodelessEventsEnabled()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->codelessEventsEnabled:Z

    return v0
.end method

.method public getCustomTabsEnabled()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->customTabsEnabled:Z

    return v0
.end method

.method public getDialogConfigurations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->dialogConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public getErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

    return-object v0
.end method

.method public getEventBindings()Lorg/json/JSONArray;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->eventBindings:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getIAPAutomaticLoggingEnabled()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->IAPAutomaticLoggingEnabled:Z

    return v0
.end method

.method public getNuxContent()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNuxEnabled()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxEnabled:Z

    return v0
.end method

.method public getSdkUpdateMessage()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->sdkUpdateMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionTimeoutInSeconds()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/facebook/internal/FetchedAppSettings;->sessionTimeoutInSeconds:I

    return v0
.end method

.method public getSmartLoginBookmarkIconURL()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginBookmarkIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartLoginMenuIconURL()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginMenuIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartLoginOptions()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginOptions:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getTrackUninstallEnabled()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->trackUninstallEnabled:Z

    return v0
.end method

.method public supportsImplicitLogging()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging:Z

    return v0
.end method
