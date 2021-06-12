.class final Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SearchMyMusicTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask$PlayMyMusicQueryArgs;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PlayMyMusicExecutor$SearchMyMusicTask"


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:J

.field private final d:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$OnQueryListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JLcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$OnQueryListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$OnQueryListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 221
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 222
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;->b:Ljava/lang/ref/WeakReference;

    .line 223
    iput-wide p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;->c:J

    .line 224
    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;->d:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$OnQueryListener;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;JLcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$OnQueryListener;Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;-><init>(Landroid/content/Context;JLcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$OnQueryListener;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;
    .locals 20

    move-object/from16 v1, p0

    .line 229
    iget-object v0, v1, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 231
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;->a:Ljava/lang/String;

    const-string v2, "doInBackground() - null context."

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    .line 235
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 236
    new-instance v2, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask$PlayMyMusicQueryArgs;

    iget-wide v3, v1, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;->c:J

    invoke-direct {v2, v0, v3, v4, v8}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask$PlayMyMusicQueryArgs;-><init>(Landroid/content/Context;JLcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;)V

    .line 238
    new-instance v11, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    invoke-direct {v11, v8}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;)V

    .line 239
    iget-object v3, v2, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask$PlayMyMusicQueryArgs;->uri:Landroid/net/Uri;

    iget-object v4, v2, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask$PlayMyMusicQueryArgs;->projection:[Ljava/lang/String;

    iget-object v5, v2, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask$PlayMyMusicQueryArgs;->selection:Ljava/lang/String;

    iget-object v6, v2, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask$PlayMyMusicQueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v7, v2, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask$PlayMyMusicQueryArgs;->orderBy:Ljava/lang/String;

    move-object v2, v0

    .line 240
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    const/4 v13, -0x1

    if-eqz v12, :cond_14

    .line 243
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_a

    .line 248
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result v14

    .line 249
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v3, "my_music_mode_option"

    const/4 v15, 0x0

    .line 250
    invoke-virtual {v2, v3, v15}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 251
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v3, "explicit_option"

    .line 252
    invoke-virtual {v2, v3, v15}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 254
    iget-wide v2, v1, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;->c:J

    invoke-static {v11, v2, v3}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;J)J

    .line 255
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v3, "Music_7_1"

    invoke-direct {v2, v15, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-static {v11, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    .line 256
    invoke-static {v11}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object v2

    const-string v3, "actionType"

    const-string v4, "Play"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    invoke-static {v11}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object v2

    const-string v3, "searchType"

    const-string v4, "Music"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    invoke-static {v11}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object v2

    const-string v3, "disablePlayControl"

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 260
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 262
    :goto_0
    new-instance v5, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    invoke-direct {v5}, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;-><init>()V

    .line 264
    iget-wide v2, v1, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;->c:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v18, -0xb

    cmp-long v2, v2, v18

    if-nez v2, :cond_2

    :try_start_1
    const-string v2, "audio_id"

    .line 266
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 265
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_1

    :cond_2
    :try_start_2
    const-string v2, "_id"

    .line 269
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :goto_1
    const-string v4, "album_id"

    .line 272
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 271
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->e:Ljava/lang/String;

    const-string v4, "title"

    .line 274
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 273
    invoke-static {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->a:Ljava/lang/String;

    const-string v4, "artist"

    .line 276
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 275
    invoke-static {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->b:Ljava/lang/String;

    const-string v4, "album"

    .line 277
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->c:Ljava/lang/String;

    const-string v4, "Local"

    .line 278
    iput-object v4, v5, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->h:Ljava/lang/String;

    .line 279
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->d:Ljava/lang/String;

    const-string v4, "cp_attrs"

    .line 281
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const v8, 0x10001

    if-eq v4, v8, :cond_c

    const v8, 0x80001

    if-ne v4, v8, :cond_3

    goto/16 :goto_6

    :cond_3
    if-eqz v14, :cond_b

    if-nez v16, :cond_b

    const-string v8, "explicit"

    .line 294
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v15, 0x1

    if-ne v8, v15, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-nez v17, :cond_5

    if-nez v8, :cond_b

    .line 296
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-static {v11}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->b(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)I

    move-result v2

    if-ne v2, v13, :cond_6

    .line 298
    invoke-static {v11, v4}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;I)I

    .line 300
    :cond_6
    sget-object v3, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->a:Landroid/net/Uri;

    const-string v2, "image_url_big"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v8, "thumbnail_id=?"

    new-array v15, v15, [Ljava/lang/String;

    iget-object v2, v5, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->e:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v2, v15, v18

    const/16 v19, 0x0

    move-object v2, v0

    move-object v13, v5

    move-object v5, v8

    move-object v8, v6

    move-object v6, v15

    move-object v15, v7

    move-object/from16 v7, v19

    .line 301
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_9

    .line 306
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "image_url_big"

    .line 307
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->f:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v0

    const/4 v8, 0x0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 300
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :goto_3
    if-eqz v2, :cond_8

    if-eqz v8, :cond_7

    .line 310
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    :try_start_6
    invoke-virtual {v8, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_4
    throw v3

    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 311
    :cond_a
    iget-object v2, v13, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->f:Ljava/lang/String;

    iput-object v2, v13, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;

    .line 312
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    move-object v8, v6

    move-object v15, v7

    const/16 v18, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    move-object v13, v5

    move-object v8, v6

    move-object v15, v7

    const/16 v18, 0x0

    .line 283
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {v11}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->b(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    .line 285
    invoke-static {v11, v4}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;I)I

    :cond_d
    const-string v2, "album_id"

    .line 288
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/provider/RestrictedContents$AlbumArt;->a(J)Landroid/net/Uri;

    move-result-object v2

    .line 289
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->f:Ljava/lang/String;

    .line 290
    iget-object v2, v13, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->f:Ljava/lang/String;

    iput-object v2, v13, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;

    .line 291
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :goto_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_13

    .line 317
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_10

    if-eqz v16, :cond_e

    .line 320
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v2, "Music_0_7"

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-static {v11, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    goto :goto_8

    .line 322
    :cond_e
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v2, "Music_0_9"

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-static {v11, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_8
    if-eqz v12, :cond_f

    .line 334
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_f
    return-object v11

    .line 326
    :cond_10
    :try_start_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [J

    invoke-static {v11, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;[J)[J

    const/4 v2, 0x0

    .line 327
    :goto_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 328
    invoke-static {v11}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->c(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)[J

    move-result-object v3

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 330
    :cond_11
    invoke-static {v11}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object v2

    const-string v3, "resultCount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    invoke-static {v11}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object v0

    const-string v2, "trackData"

    .line 332
    invoke-static {v15}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    .line 331
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v12, :cond_12

    .line 334
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_12
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground() - Spent time of query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_13
    move-object v6, v8

    move-object v7, v15

    const/4 v8, 0x0

    const/4 v13, -0x1

    const/4 v15, 0x0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v0

    const/4 v8, 0x0

    goto :goto_c

    :catch_2
    move-exception v0

    move-object v8, v0

    goto :goto_b

    .line 244
    :cond_14
    :goto_a
    :try_start_8
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v2, "Music_7_2"

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-static {v11, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v12, :cond_15

    .line 334
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_15
    return-object v11

    .line 239
    :goto_b
    :try_start_9
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :goto_c
    if-eqz v12, :cond_17

    if-eqz v8, :cond_16

    .line 334
    :try_start_a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    move-object v3, v0

    invoke-virtual {v8, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_16
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_17
    :goto_d
    throw v2
.end method

.method protected a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;->d:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$OnQueryListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$OnQueryListener;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 210
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;->a([Ljava/lang/Void;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 210
    check-cast p1, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)V

    return-void
.end method
