.class public Lcom/samsung/android/app/music/advertise/AdScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile h:Lcom/samsung/android/app/music/advertise/AdScheduler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/advertise/AdPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/samsung/android/app/music/advertise/AdPolicy;

.field private c:Lcom/samsung/android/app/music/advertise/AdPlayType;

.field private d:Z

.field private e:Z

.field private f:Z

.field private final g:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->a:Ljava/util/List;

    .line 53
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->c:Lcom/samsung/android/app/music/advertise/AdPlayType;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->d:Z

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->e:Z

    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->f:Z

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->g:Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdScheduler;->e()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/advertise/AdScheduler;
    .locals 2

    .line 76
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdScheduler;->h:Lcom/samsung/android/app/music/advertise/AdScheduler;

    if-nez v0, :cond_1

    .line 77
    const-class v0, Lcom/samsung/android/app/music/advertise/AdScheduler;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/advertise/AdScheduler;->h:Lcom/samsung/android/app/music/advertise/AdScheduler;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/samsung/android/app/music/advertise/AdScheduler;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/advertise/AdScheduler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/advertise/AdScheduler;->h:Lcom/samsung/android/app/music/advertise/AdScheduler;

    .line 81
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 83
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->h:Lcom/samsung/android/app/music/advertise/AdScheduler;

    return-object p0
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->b:Lcom/samsung/android/app/music/advertise/AdPolicy;

    const/4 v1, 0x0

    .line 89
    iput-boolean v1, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->d:Z

    .line 90
    iput-boolean v1, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->e:Z

    .line 91
    iput-boolean v1, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->f:Z

    .line 93
    iget-object v2, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->g:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_AD_AUDIO_PATTERN"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "6-AD-6-AI&2-AI"

    .line 97
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/advertise/AdPolicy;

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->b:Lcom/samsung/android/app/music/advertise/AdPolicy;

    return-void
.end method

.method private f()J
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->g:Landroid/content/Context;

    const-string v1, "com.samsung.radio.KEY_AD_VIDEO_INTERVAL"

    const-string v2, "60"

    .line 250
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    const-string v0, "Advert.AdScheduler"

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoAdPlayTime = videoAdPlayTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->g:Landroid/content/Context;

    const-string v1, "com.samsung.radio.KEY_AD_VIDEO_PRE_PLAY_TIME"

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "&"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 109
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->a:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/advertise/AdPolicy;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/music/advertise/AdPolicy;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->a:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/advertise/AdPolicy;

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-direct {v1, p1, v3}, Lcom/samsung/android/app/music/advertise/AdPolicy;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-boolean p1, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->d:Z

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->a:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/advertise/AdPolicy;

    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->b:Lcom/samsung/android/app/music/advertise/AdPolicy;

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->a:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/advertise/AdPolicy;

    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->b:Lcom/samsung/android/app/music/advertise/AdPolicy;

    .line 119
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/advertise/AdPolicy;

    const-string v1, "Advert.AdScheduler"

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsePatten : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdPolicy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 123
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 106
    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 1

    .line 302
    iput-boolean p1, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->e:Z

    .line 303
    iget-boolean p1, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->e:Z

    if-eqz p1, :cond_0

    const-string p1, "Advert.AdScheduler"

    const-string v0, "setVideoAdOn - bVideoAdOn is true"

    .line 304
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Advert.AdScheduler"

    const-string v0, "setVideoAdOn - bVideoAdOn is false"

    .line 306
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->isSupportedAd()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 7

    const-string v0, "Advert.AdScheduler"

    const-string v1, "shouldPlayVideoAd"

    .line 230
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Advert.AdScheduler"

    const-string v2, "shouldPlayVideoAd : Streaming User or Not checked signed yet"

    .line 233
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 237
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->g:Landroid/content/Context;

    const-string v4, "com.samsung.radio.KEY_AD_VIDEO_PRE_PLAY_TIME"

    const-wide/16 v5, 0x0

    invoke-static {v0, v4, v5, v6}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdScheduler;->f()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const-string v0, "Advert.AdScheduler"

    const-string v2, "shouldPlayVideoAd : It\'s not video ad show time"

    .line 239
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const-string v0, "Advert.AdScheduler"

    const-string v1, "shouldPlayVideoAd : true"

    .line 243
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 6

    const-string v0, "Advert.AdScheduler"

    const-string v1, "getVideoCp"

    .line 268
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->g:Landroid/content/Context;

    const-string v1, "com.samsung.radio.KEY_AD_VIDEO_CP"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->g:Landroid/content/Context;

    const-string v2, "com.samsung.radio.KEY_AD_VIDEO_LAST_PLAY_CP"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "Advert.AdScheduler"

    .line 273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoCp - cp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    if-ne v1, v3, :cond_0

    const-string v0, "Advert.AdScheduler"

    const-string v1, "getVideoCp - lastPlayedCp = MEZZO"

    .line 277
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const-string v0, "Advert.AdScheduler"

    const-string v1, "getVideoCp - lastPlayedCp = INCROSS"

    .line 280
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    :goto_0
    const-string v1, "Advert.AdScheduler"

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoCp - mLastPlayedVideoCp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->g:Landroid/content/Context;

    const-string v2, "com.samsung.radio.KEY_AD_VIDEO_LAST_PLAY_CP"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    return v0
.end method

.method public d()Z
    .locals 2

    .line 293
    iget-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "Advert.AdScheduler"

    const-string v1, "isVideoAdOn - bVideoAdOn is true"

    .line 294
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Advert.AdScheduler"

    const-string v1, "isVideoAdOn - bVideoAdOn is false"

    .line 296
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdScheduler;->e:Z

    return v0
.end method
