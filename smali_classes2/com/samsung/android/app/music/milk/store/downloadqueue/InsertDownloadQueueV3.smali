.class public Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$InsertQueueFailException;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "InsertDownloadQueueV3"

    .line 52
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->a:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->b:Ljava/lang/String;

    .line 65
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->c:Ljava/lang/ref/WeakReference;

    .line 66
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->d:I

    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->e:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;[J)I
    .locals 8

    const-string v0, "InsertDownloadQueueV3"

    const-string v1, "insertDownloadQueue"

    .line 185
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "audio_id"

    .line 189
    invoke-static {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v5

    .line 191
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->e:Landroid/content/Context;

    .line 192
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;->a()Landroid/net/Uri;

    move-result-object v3

    const-string p2, "audio_id"

    const-string v1, "track_id"

    const-string v4, "track"

    const-string v6, "album"

    filled-new-array {p2, v1, v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "download_basket._id"

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v1, 0x0

    .line 197
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "audio_id"

    const-string v4, "audio_id"

    .line 201
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "track_id"

    const-string v4, "track_id"

    .line 203
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "track_type"

    .line 204
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "album"

    const-string v4, "album"

    .line 206
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v3

    const-string v4, "milk_download_quality"

    const/4 v5, 0x1

    .line 208
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 209
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->e:Landroid/content/Context;

    const v5, 0x7f0b04b5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    packed-switch v3, :pswitch_data_0

    const-string v5, "InsertDownloadQueueV3"

    goto :goto_0

    :pswitch_0
    const-string v4, "320"

    goto :goto_1

    :pswitch_1
    const-string v4, "192"

    goto :goto_1

    .line 219
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unkown qualityType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v3, "bitrate"

    .line 222
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "order_id"

    const-string v4, "track_id"

    .line 225
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "is_downloading"

    const/4 v4, 0x0

    .line 227
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 191
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz p2, :cond_2

    if-eqz v1, :cond_1

    .line 231
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_3
    throw p1

    :cond_3
    :goto_4
    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadQueue;->a()Landroid/net/Uri;

    move-result-object p2

    .line 235
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    .line 234
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    const-string p2, "InsertDownloadQueueV3"

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertItems() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " item is inserted to download queue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;Landroid/content/Context;[J)I
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->a(Landroid/content/Context;[J)I

    move-result p0

    return p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)J
    .locals 7

    const-string v0, "InsertDownloadQueueV3"

    const-string v1, "queryPurchasedTrack"

    .line 168
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "InsertDownloadQueueV3"

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryPurchasedTrack track id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "track_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "track_type"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->d:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->a()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 176
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "audio_id"

    .line 177
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 174
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 179
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw v0

    :cond_2
    const-wide/16 v0, -0x1

    :goto_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-wide v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;Landroid/content/Context;Ljava/lang/String;)J
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/network/request/order/DownloadBasketApis;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private b()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "InsertDownloadQueueV3"

    const-string v1, "query order id"

    .line 244
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    if-eqz p1, :cond_4

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->a()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 253
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "orderId"

    .line 255
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v1, p2

    .line 251
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v1, :cond_0

    .line 257
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw p2

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string p1, "InsertDownloadQueueV3"

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query order id  track : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",  orderid : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->c:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private c()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis;->b(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;)Lio/reactivex/Observable;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->c()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "InsertDownloadQueueV3"

    const-string v1, "start verify tracks"

    .line 77
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->b()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;)V

    .line 80
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 123
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 124
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
