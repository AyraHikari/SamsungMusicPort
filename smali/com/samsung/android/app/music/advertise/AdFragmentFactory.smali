.class public Lcom/samsung/android/app/music/advertise/AdFragmentFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;Z)Landroid/support/v4/app/Fragment;
    .locals 4

    const-string v0, "Advert.AdFragmentFactory"

    const-string v1, "getFragment"

    .line 25
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdFragmentFactory$1;->a:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p1, "Advert.AdFragmentFactory"

    const-string p2, "getFragment - VIDEO INCROSS"

    .line 53
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p0

    const-string p1, "ads_show"

    const-string p2, "ads_type"

    const-string v1, "video"

    .line 55
    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->a(Z)Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p1, "Advert.AdFragmentFactory"

    const-string p2, "getFragment - VIDEO MEZZO"

    .line 48
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p0

    const-string p1, "ads_show"

    const-string p2, "ads_type"

    const-string v1, "video"

    .line 50
    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->a(Z)Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;

    move-result-object p0

    return-object p0

    :pswitch_2
    const-string p1, "Advert.AdFragmentFactory"

    const-string p2, "getFragment - VIDEO"

    .line 38
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string p2, "ads_show"

    const-string v2, "ads_type"

    const-string v3, "video"

    .line 40
    invoke-virtual {p1, p2, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p0}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/advertise/AdScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdScheduler;->c()I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 43
    invoke-static {v1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->a(Z)Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->a(Z)Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;

    move-result-object p0

    return-object p0

    :pswitch_3
    const-string p1, "Advert.AdFragmentFactory"

    const-string v0, "getFragment - POSTROLL"

    .line 33
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p0

    const-string p1, "ads_show"

    const-string v0, "ads_type"

    const-string v1, "back_image"

    .line 35
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object p0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->POSTROLL:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    invoke-static {p0, p2}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->a(Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;Z)Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;

    move-result-object p0

    return-object p0

    :pswitch_4
    const-string p1, "Advert.AdFragmentFactory"

    const-string p2, "getFragment - INTERSTITIAL"

    .line 28
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p0

    const-string p1, "ads_show"

    const-string p2, "ads_type"

    const-string v0, "back_image"

    .line 30
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object p0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->INTERSTITIAL:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    invoke-static {p0, v1}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->a(Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;Z)Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
