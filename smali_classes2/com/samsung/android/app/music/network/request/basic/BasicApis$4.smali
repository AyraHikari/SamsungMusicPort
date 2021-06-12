.class final Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/basic/BasicApis;->b(Landroid/content/Context;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/basic/StoreDataModel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/basic/StoreDataModel;)Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "BasicApis"

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doStoreData - storeDataModel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getResultCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v2, "com.samsung.radio.dormancycount"

    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getDormancyCount()I

    move-result v3

    .line 70
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v2, "com.samsung.radio.start_client.force_update_version"

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getPartnerAppVersion()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v2, "com.samsung.radio.currency.sign"

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getCurrencySign()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v2, "com.samsung.radio.smart_station_guide_url"

    .line 77
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getJustForYouLinkUrl()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v2, "com.samsung.radio.smart_station_support_type"

    .line 79
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getJustForYou()I

    move-result v3

    .line 78
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v2, "com.samsung.store.support_bixby_search_remove"

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getBixbySearchDelimeterYn()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 80
    :cond_0
    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v1, "com.samsung.store.bixbyconfig_search_play_type"

    .line 83
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getBixbyConfigListType()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v1, "com.samsung.store.bixbyconfig_search_play_count"

    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getBixbyConfigListCount()I

    move-result v2

    .line 84
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v1, "com.samsung.store.bixbyconfig_on_device_search_keword_max_count"

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getBixbyConfigKeywordCount()I

    move-result v2

    .line 86
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v1, "com.samsung.radio.KEY_BIXBY_EXCUTABLE_SEARCH_RESULT_MAX_COUNT"

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getBixbyConfigSearchCount()I

    move-result v2

    .line 88
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v1, "com.samsung.radio.KEY_STORE_DATA_CONFIGS_COPYRIGHT"

    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getConfigs()Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->getCopyRight()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v1, "com.samsung.radio.KEY_STORE_DATA_CONFIGS_PURCHASE_POPUP_TEXT"

    .line 93
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getConfigs()Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->getPurchasePopupText()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v1, "com.samsung.radio.KEY_STORE_DATA_CONFIGS_BAN_MAX_COUNT"

    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getConfigs()Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->getBanMaxCnt()I

    move-result v2

    .line 94
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v1, "com.sec.android.app.music.KEY_SHOP_AGE_LIMIT"

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getShopAgeLimit()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v1, "com.samsung.radio.KEY_AD_AUDIO_PATTERN"

    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getAdInterval()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v1, "com.samsung.radio.KEY_AD_VIDEO_INTERVAL"

    .line 106
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getVideoAdIntervalTime()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v1, "com.samsung.radio.KEY_AD_BANNER_CP"

    .line 108
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getConfigs()Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->getBannerAdDefaultCp()I

    move-result v2

    .line 107
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v1, "com.samsung.radio.KEY_AD_POST_ROLL_CP"

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getConfigs()Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->getPostrollAdDefaultCp()I

    move-result v2

    .line 109
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v1, "com.samsung.radio.KEY_AD_VIDEO_CP"

    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getConfigs()Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->getVideoAdDefaultCp()I

    move-result v2

    .line 111
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v1, "com.samsung.radio.KEY_PRE_AUDIO_AD_INTERVAL"

    .line 115
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getConfigs()Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->getPreAudioAdIntervalTime()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    .line 114
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a:Landroid/content/Context;

    const-string v1, "key_purchase_block"

    .line 120
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getConfigs()Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->getPurchaseBlock()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 123
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 126
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    check-cast p1, Lcom/samsung/android/app/music/model/basic/StoreDataModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;->a(Lcom/samsung/android/app/music/model/basic/StoreDataModel;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
