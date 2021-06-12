.class public Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/dawin/DawinVideoAd$DawinVideoAdListener;
.implements Lcom/samsung/android/app/music/advertise/KeyBackPressedListener;


# instance fields
.field a:Landroid/os/Handler;

.field private b:Lcom/dawin/DawinVideoAd;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private f:Z

.field private g:Z

.field private final h:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "\uad11\uace0 \uc5c6\uc74c"

    .line 48
    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->c:Ljava/lang/String;

    const/16 v0, 0x64

    .line 50
    iput v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->d:I

    const/16 v0, 0x2710

    .line 52
    iput v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->e:I

    const-string v0, "QL6ONY3KX8C"

    const-string v1, "QL6ONY3KX8D"

    const-string v2, "QL6ONY3KX8E"

    const-string v3, "QL6ONY3KX8F"

    .line 58
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->h:[Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Z)Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;
    .locals 3

    const-string v0, "Advert.AdFragmentIncrossVideo"

    const-string v1, "newInstance"

    .line 65
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;-><init>()V

    .line 68
    iput-boolean p0, v0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->f:Z

    .line 70
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA_AD_POPUP_TYPE"

    .line 71
    sget-object v2, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->VIDEO:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->getValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 304
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Company name"

    const-string v2, "Incross"

    .line 305
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Response"

    .line 306
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v1, "842"

    const-string v2, "8112"

    const-string v3, "Incross"

    .line 309
    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 313
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->g:Z

    return p1
.end method

.method private b()V
    .locals 2

    const-string v0, "Advert.AdFragmentIncrossVideo"

    const-string v1, "release"

    .line 124
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;

    .line 127
    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->a()V

    return-void
.end method

.method private c()I
    .locals 4

    const-string v0, "Advert.AdFragmentIncrossVideo"

    const-string v1, "getAdSlot"

    .line 290
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com.samsung.radio.KEY_AD_INCROSS_ADSLOT_INDEX"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "Advert.AdFragmentIncrossVideo"

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdSlot - slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "com.samsung.radio.KEY_AD_INCROSS_ADSLOT_INDEX"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "Advert.AdFragmentIncrossVideo"

    const-string v1, "onKeyBackPressed"

    .line 170
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->g:Z

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b()V

    :cond_0
    return-void
.end method

.method public onAdClickThru(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Advert.AdFragmentIncrossVideo"

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdClickThru : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string p2, "ads_click"

    const-string v0, "ads_type"

    const-string v1, "video"

    .line 240
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Advert.AdFragmentIncrossVideo"

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdError - title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 262
    iput-boolean p2, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->g:Z

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "ads_video_error"

    const-string v2, "ads_cp"

    const-string v3, "incross"

    .line 265
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\uad11\uace0 \uc5c6\uc74c"

    .line 267
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->f:Z

    if-nez v0, :cond_0

    .line 269
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->MEZZO:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->a(Landroid/content/Context;Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;Z)V

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 272
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01e6

    invoke-static {v0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    .line 276
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 278
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b()V

    .line 281
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Advert.AdFragmentIncrossVideo"

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdLoaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b:Lcom/dawin/DawinVideoAd;

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b:Lcom/dawin/DawinVideoAd;

    invoke-virtual {p1}, Lcom/dawin/DawinVideoAd;->startAd()V

    :cond_0
    return-void
.end method

.method public onAdSkiped(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Advert.AdFragmentIncrossVideo"

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdSkiped : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->a(Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b()V

    return-void
.end method

.method public onAdSkippableStateChange(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Advert.AdFragmentIncrossVideo"

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdSkippableStateChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdStoped(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Advert.AdFragmentIncrossVideo"

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdStoped : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b()V

    return-void
.end method

.method public onAdVideoComplete(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Advert.AdFragmentIncrossVideo"

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdVideoComplete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->a(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b()V

    return-void
.end method

.method public onAdVideoFirstQuartile(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Advert.AdFragmentIncrossVideo"

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdVideoFirstQuartile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdVideoMidpoint(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Advert.AdFragmentIncrossVideo"

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdVideoMidpoint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdVideoProgress(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Advert.AdFragmentIncrossVideo"

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdVideoProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdVideoStarted(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Advert.AdFragmentIncrossVideo"

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdVideoStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->f:Z

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->a(Z)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->a:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo$1;-><init>(Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onAdVideoThirdQuartile(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Advert.AdFragmentIncrossVideo"

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdVideoThirdQuartile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "Advert.AdFragmentIncrossVideo"

    const-string v1, "onCreate"

    .line 79
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;

    .line 83
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->a(Lcom/samsung/android/app/music/advertise/KeyBackPressedListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string p3, "Advert.AdFragmentIncrossVideo"

    const-string v0, "onCreateView"

    .line 90
    invoke-static {p3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f04000d

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 158
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    const-string v0, "Advert.AdFragmentIncrossVideo"

    const-string v1, "onDestroy"

    .line 160
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b:Lcom/dawin/DawinVideoAd;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b:Lcom/dawin/DawinVideoAd;

    invoke-virtual {v0}, Lcom/dawin/DawinVideoAd;->onDestroy()V

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b:Lcom/dawin/DawinVideoAd;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 147
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const-string v0, "Advert.AdFragmentIncrossVideo"

    const-string v1, "onPause"

    .line 149
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b:Lcom/dawin/DawinVideoAd;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b:Lcom/dawin/DawinVideoAd;

    invoke-virtual {v0}, Lcom/dawin/DawinVideoAd;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 132
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string v0, "Advert.AdFragmentIncrossVideo"

    const-string v1, "onResume"

    .line 134
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b:Lcom/dawin/DawinVideoAd;

    if-nez v0, :cond_0

    const-string v0, "Advert.AdFragmentIncrossVideo"

    const-string v1, "onResume - mDawinVideoAd is null"

    .line 137
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b:Lcom/dawin/DawinVideoAd;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b:Lcom/dawin/DawinVideoAd;

    invoke-virtual {v0}, Lcom/dawin/DawinVideoAd;->onResume()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 97
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "Advert.AdFragmentIncrossVideo"

    const-string p2, "onViewCreated"

    .line 99
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->getView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f130133

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/dawin/DawinVideoAd;

    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b:Lcom/dawin/DawinVideoAd;

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b:Lcom/dawin/DawinVideoAd;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/dawin/DawinVideoAd;->setVolume(I)V

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->c()I

    move-result p1

    .line 105
    iget-object p2, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->h:[Ljava/lang/String;

    aget-object p1, p2, p1

    .line 107
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "adslotid"

    .line 109
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "userdata"

    const-string v0, "USERDATA"

    .line 110
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "videotimeout"

    const/16 v0, 0x2710

    .line 111
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 116
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 118
    iget-object p2, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->b:Lcom/dawin/DawinVideoAd;

    invoke-virtual {p2, p1, p0}, Lcom/dawin/DawinVideoAd;->initAd(Ljava/lang/String;Lcom/dawin/DawinVideoAd$DawinVideoAdListener;)V

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->g:Z

    return-void
.end method
