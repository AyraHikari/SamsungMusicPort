.class public final Lcom/samsung/android/app/music/service/receiver/MediaCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaCommandReceiver.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/app/music/l;

    invoke-direct {v0}, Lcom/samsung/android/app/music/l;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/l;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/l;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 19

    .line 1
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPlayFromMediaId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): path: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], id: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/receiver/a;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, Lkotlin/text/o;->u(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    if-nez v5, :cond_5

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/o;->u(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v4

    :goto_3
    if-nez v5, :cond_5

    .line 6
    sget-object v5, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->b:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$b;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$b;->a()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    .line 7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/service/browser/mediaitem/h;

    .line 8
    invoke-interface {v6, v1}, Lcom/samsung/android/app/music/service/browser/mediaitem/h;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object/from16 v7, p1

    move/from16 v13, p3

    .line 9
    invoke-interface {v6, v7, v0, v13}, Lcom/samsung/android/app/music/service/browser/mediaitem/h;->f(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_4
    move-object/from16 v7, p1

    move/from16 v13, p3

    goto :goto_4

    :cond_5
    move/from16 v13, p3

    .line 10
    invoke-static/range {p2 .. p2}, Lkotlin/text/o;->u(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/a;->b()[J

    move-result-object v0

    goto :goto_5

    :cond_6
    new-array v0, v4, [J

    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v0, v2

    :goto_5
    move-object v10, v0

    .line 11
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->S0()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/g;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0xdb

    const/16 v18, 0x0

    move/from16 v13, p3

    invoke-static/range {v7 .. v18}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/g$a;->e(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/g;II[JLjava/util/List;IZLandroid/os/Bundle;JILjava/lang/Object;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onReceive() intent:"

    .line 1
    invoke-static {v0, p2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/receiver/a;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/receiver/MediaCommandReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "onReceive() permission denied."

    .line 3
    invoke-static {p1}, Lcom/samsung/android/app/music/service/receiver/a;->a(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "value_2"

    const-string v3, ""

    const-string v4, "args"

    const-string v5, "command"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string p1, "com.sec.android.app.music.musicservicecommand.pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 5
    :cond_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->d1()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;->pause()V

    goto/16 :goto_4

    :sswitch_1
    const-string p1, "com.sec.android.app.music.musicservicecommand.playprevious"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_4

    .line 7
    :cond_2
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->d1()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;

    move-result-object p1

    invoke-static {p1, v8, v7, v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/c;->r(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;ZILjava/lang/Object;)V

    goto/16 :goto_4

    :sswitch_2
    const-string p1, "com.sec.android.app.music.musicservicecommand.togglepause"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_4

    .line 9
    :cond_3
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->d1()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;->R()V

    goto/16 :goto_4

    :sswitch_3
    const-string v1, "com.samsung.musicplus.intent.action.PLAY_CONTENTS"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_4

    .line 11
    :cond_4
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/c;->a:Lcom/samsung/android/app/musiclibrary/core/service/utility/player/c;

    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/c;->e(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_4

    :sswitch_4
    const-string p1, "com.sec.android.app.music.musicservicecommand.playnext"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_4

    .line 15
    :cond_5
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->d1()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/c;->p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;)V

    goto/16 :goto_4

    :sswitch_5
    const-string v1, "com.samsung.android.app.music.core.action.PLAY_FROM_MEDIA_ID"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_4

    .line 17
    :cond_6
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move-object v3, v0

    .line 18
    :goto_0
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_8

    move p2, v8

    goto :goto_1

    :cond_8
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    :goto_1
    if-nez p2, :cond_9

    goto :goto_2

    :cond_9
    move v7, v8

    .line 19
    :goto_2
    :try_start_0
    invoke-virtual {p0, p1, v3, v7}, Lcom/samsung/android/app/music/service/receiver/MediaCommandReceiver;->b(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playFromMediaId not supported mediaId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/receiver/a;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_6
    const-string v1, "com.sec.android.app.music.intent.action.PLAY_VIA"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_4

    .line 22
    :cond_a
    sget-object v0, Lcom/samsung/android/app/music/service/v3/util/b;->a:Lcom/samsung/android/app/music/service/v3/util/b;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/service/v3/util/b;->B(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_4

    :sswitch_7
    const-string p1, "com.samsung.android.app.music.core.action.REMOVED_NOTIFICATION"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_4

    .line 24
    :cond_b
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/l;->c()Lcom/samsung/android/app/musiclibrary/core/service/v3/j;

    move-result-object p1

    if-nez p1, :cond_c

    goto/16 :goto_4

    :cond_c
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/j;->E()V

    goto/16 :goto_4

    :sswitch_8
    const-string v1, "com.samsung.android.app.music.core.action.PLAY_FROM_SEARCH"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_4

    .line 26
    :cond_d
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_3

    :cond_e
    move-object v3, v0

    .line 27
    :goto_3
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_f

    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 28
    :cond_f
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 29
    sget-object v1, Lcom/samsung/android/app/music/service/v3/util/b;->a:Lcom/samsung/android/app/music/service/v3/util/b;

    const-string v2, "extras"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3, p2, v0}, Lcom/samsung/android/app/music/service/v3/util/b;->s(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)Z

    goto :goto_4

    :sswitch_9
    const-string v1, "com.sec.android.app.music.intent.action.ENQUEUE"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_4

    .line 31
    :cond_10
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/c;->a:Lcom/samsung/android/app/musiclibrary/core/service/utility/player/c;

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 33
    invoke-virtual {v0, p1, p2, v7}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/c;->a(Landroid/content/Context;Landroid/os/Bundle;Z)V

    goto :goto_4

    :sswitch_a
    const-string p1, "com.sec.android.app.music.musicservicecommand.prev"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_4

    .line 35
    :cond_11
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->d1()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;

    move-result-object p1

    invoke-static {p1, v8, v7, v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f$a;->a(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;ZILjava/lang/Object;)V

    goto :goto_4

    :sswitch_b
    const-string p1, "com.sec.android.app.music.musicservicecommand.play"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_4

    .line 37
    :cond_12
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->d1()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;->a()V

    goto :goto_4

    :sswitch_c
    const-string p1, "com.sec.android.app.music.musicservicecommand.next"

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_4

    .line 39
    :cond_13
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->d1()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;->next()V

    :cond_14
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f48ac9b -> :sswitch_c
        -0x5f47ac5a -> :sswitch_b
        -0x5f47955b -> :sswitch_a
        -0x4926729d -> :sswitch_9
        -0x1b90b34f -> :sswitch_8
        -0x2a24397 -> :sswitch_7
        0x162f4048 -> :sswitch_6
        0x1b27043f -> :sswitch_5
        0x1fad9b99 -> :sswitch_4
        0x533dd94f -> :sswitch_3
        0x5dde9270 -> :sswitch_2
        0x7129089d -> :sswitch_1
        0x764d6bc4 -> :sswitch_0
    .end sparse-switch
.end method
