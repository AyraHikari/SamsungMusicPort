.class public Lcom/samsung/android/app/music/ActivityLauncher;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/MediaCommandAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Intent;
    .locals 2

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.intent.action.LAUNCH_MUSIC_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.music"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 96
    invoke-static {}, Lcom/samsung/android/app/music/ActivityLauncher;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_with"

    .line 97
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 107
    invoke-static {}, Lcom/samsung/android/app/music/ActivityLauncher;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_with"

    .line 108
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "extra_with_data"

    .line 109
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Z)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 142
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/ActivityLauncher;->a(ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static a(ZI)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/music/ActivityLauncher;->a(ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static a(ZLjava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/16 v0, 0x64

    .line 153
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/ActivityLauncher;->a(ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static a(ZLjava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.intent.action.LAUNCH_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.music"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "launchMusicPlayer"

    .line 180
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "extra_with"

    .line 181
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "tag"

    .line 182
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 497
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/ActivityLauncher;->a(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 505
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_group_type"

    .line 506
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    invoke-virtual {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p1, p2, p3, v0}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 511
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 525
    :pswitch_1
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string p2, "app_open"

    const-string v0, "where"

    const-string v1, "lock_screen"

    .line 526
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :pswitch_2
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string p2, "app_open"

    const-string v0, "where"

    const-string v1, "edgepanel"

    .line 530
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :pswitch_3
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string p2, "app_open"

    const-string v0, "where"

    const-string v1, "widget"

    .line 522
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :pswitch_4
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string p2, "app_open"

    const-string v0, "where"

    const-string v1, "notification"

    .line 518
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ExtraLauncher"

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIntent: intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->f()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isLegalAgreed()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez v1, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->g()V

    goto/16 :goto_3

    :cond_1
    const-string v2, "com.sec.android.app.music.intent.action.S_FIND"

    .line 290
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/SFinderPlayUtils;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_2
    const-string v2, "com.sec.android.app.music.intent.action.PLAY_VIA"

    .line 292
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "launchMusicPlayer"

    .line 293
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "ExtraLauncher"

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " launch music : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/util/player/PlayUtils;->a(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz v1, :cond_1b

    .line 300
    invoke-static {v0, v3}, Lcom/samsung/android/app/music/util/LaunchUtils;->a(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :cond_3
    const-string v2, "com.sec.android.app.music.musicservicecommand.play"

    .line 302
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "com.sec.android.music.intent.action.PLAY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string v2, "com.sec.android.app.music.musicservicecommand.playprevious"

    .line 304
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "com.sec.android.app.music.intent.action.PLAY_PREVIOUS"

    .line 305
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_1

    :cond_5
    const-string v2, "com.sec.android.app.music.musicservicecommand.playnext"

    .line 307
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "com.sec.android.app.music.intent.action.PLAY_NEXT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const-string v2, "com.samsung.musicplus.intent.action.PLAY_CONTENTS"

    .line 309
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 310
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playContents(Landroid/content/Context;Landroid/content/Intent;)V

    .line 311
    invoke-direct {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->d()V

    goto/16 :goto_3

    :cond_7
    const-string v2, "com.sec.android.app.music.intent.action.STOP"

    .line 312
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 316
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->pause()V

    goto/16 :goto_3

    :cond_8
    const-string v2, "com.sec.android.app.music.intent.action.SUFFLE_ON"

    .line 317
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 p1, 0x1

    .line 318
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/ActivityLauncher;->b(Z)V

    goto/16 :goto_3

    :cond_9
    const-string v2, "com.sec.android.app.music.intent.action.SUFFLE_OFF"

    .line 319
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 320
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/ActivityLauncher;->b(Z)V

    goto/16 :goto_3

    :cond_a
    const-string v2, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    .line 321
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 322
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/util/player/GoogleSearchPlayUtils;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 324
    invoke-static {v0, v3}, Lcom/samsung/android/app/music/util/LaunchUtils;->a(Landroid/content/Context;Z)V

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->d()V

    goto/16 :goto_3

    :cond_b
    const-string v0, "query"

    .line 328
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/LaunchUtils;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    const-string v2, "com.samsung.android.sconnect.action.MUSIC_DMR"

    .line 331
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 332
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/QuickConnectPlayUtils;->play(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->d()V

    goto/16 :goto_3

    :cond_d
    const-string v2, "com.sec.android.app.music.intent.action.LAUNCH_MUSIC"

    .line 334
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 335
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/ActivityLauncher;->a(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_e
    const-string v2, "com.sec.android.app.music.intent.action.LAUNCH_MUSIC_MAIN"

    .line 336
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 337
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/ActivityLauncher;->b(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_f
    const-string v2, "com.sec.android.app.music.intent.action.LAUNCH_DETAIL_LIST"

    .line 338
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_10

    const-string v0, "launchListType"

    .line 339
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "launchListID"

    .line 340
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launchListName"

    .line 341
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/music/ActivityLauncher;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    const-string v2, "com.sec.android.app.music.intent.action.LAUNCH_FROM_SHORTCUT"

    .line 342
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_14

    .line 343
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    move-result-object v1

    const v2, 0x10001

    if-eqz v1, :cond_13

    .line 345
    invoke-virtual {v1}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->a()I

    move-result p1

    .line 346
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v4

    if-eqz v4, :cond_12

    const/16 v4, 0x55

    if-eq p1, v4, :cond_11

    const/16 v4, 0x54

    if-eq p1, v4, :cond_11

    const/16 v4, 0x66

    if-ne p1, v4, :cond_12

    :cond_11
    const p1, 0x7f0b03ba

    .line 349
    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 350
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 351
    invoke-direct {p0, v2, v5, v5}, Lcom/samsung/android/app/music/ActivityLauncher;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 353
    :cond_12
    invoke-virtual {v1}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->d()I

    move-result v1

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/samsung/android/app/music/ActivityLauncher;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 356
    :cond_13
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 357
    invoke-direct {p0, v2, v5, v5}, Lcom/samsung/android/app/music/ActivityLauncher;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_14
    const-string v2, "com.sec.android.app.music.intent.action.LAUNCH_DETAIL_LIST_FROM_APP_SHORTCUT"

    .line 359
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v1, "launchListID"

    .line 360
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launchListType"

    .line 361
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 362
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 363
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/util/ListUtils;->b(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/app/music/ActivityLauncher;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_15
    const-string v2, "com.sec.android.app.music.intent.action.LAUNCH_MUSIC_PLAYER_FROM_APP_SHORTCUT"

    .line 364
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 365
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play()V

    const-string v0, "extra_from"

    .line 366
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, v5, p1}, Lcom/samsung/android/app/music/ActivityLauncher;->a(Ljava/lang/String;I)V

    goto :goto_3

    :cond_16
    const-string v2, "android.intent.action.VIEW"

    .line 367
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 368
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "samu_bixby"

    .line 369
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 370
    new-instance v0, Lcom/samsung/android/app/music/ActivityLauncher$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/ActivityLauncher$1;-><init>(Lcom/samsung/android/app/music/ActivityLauncher;)V

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;)V

    goto :goto_3

    .line 382
    :cond_17
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->getSchemeType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 384
    sget-object v2, Lcom/samsung/android/app/music/ActivityLauncher$2;->a:[I

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 387
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->h()Landroid/content/Intent;

    move-result-object v1

    .line 388
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "tag"

    const/16 v2, 0x6d

    .line 389
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    .line 391
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v1, "8151"

    .line 392
    invoke-virtual {p1, v5, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string v0, "app_open"

    const-string v1, "where"

    const-string v2, "deeplink"

    .line 394
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 308
    :cond_18
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playNext()V

    goto :goto_3

    .line 306
    :cond_19
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playPrevious()V

    goto :goto_3

    .line 303
    :cond_1a
    :goto_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play()V

    :cond_1b
    :goto_3
    return-void

    .line 284
    :cond_1c
    :goto_4
    invoke-static {v0, v3}, Lcom/samsung/android/app/music/util/LaunchUtils;->a(Landroid/content/Context;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3

    const-string v0, "launchMusicPlayer"

    const/4 v1, 0x1

    .line 409
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "tag"

    const/16 v2, 0x64

    .line 410
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/app/music/ActivityLauncher;->b(Landroid/content/Context;I)V

    .line 414
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/app/music/ActivityLauncher;->a(Landroid/content/Context;I)V

    const-string p2, "launchMusicPlayerWithRadio"

    const/4 v1, 0x0

    .line 416
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-string v1, "extra_from"

    const/4 v2, -0x1

    .line 417
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "extra_with"

    .line 418
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 423
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/ActivityLauncher;->b(Ljava/lang/String;I)V

    goto :goto_1

    .line 421
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/ActivityLauncher;->a(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 0

    .line 432
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/util/LaunchUtils;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public static b()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-static {v0}, Lcom/samsung/android/app/music/ActivityLauncher;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.intent.action.LAUNCH_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.music"

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "launchMusicPlayerWithRadio"

    const/4 v2, 0x1

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_with"

    .line 205
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private b(Landroid/content/Context;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const-string p2, "ENFP"

    const-string v0, "Lockscreen player"

    .line 559
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string p1, "521"

    const-string p2, "6211"

    .line 563
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const-string p2, "ENFP"

    const-string v0, "Widget"

    .line 553
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "517"

    const-string p2, "6131"

    .line 555
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 542
    :pswitch_4
    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "ENFP"

    const-string v0, "Lockscreen mini player"

    .line 543
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "ENFP"

    const-string v0, "Quick panel player"

    .line 546
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p1, ""

    const-string p2, "6191"

    .line 549
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "extra_with"

    .line 441
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/ActivityLauncher;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launchListType"

    const/4 v2, -0x1

    .line 444
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v2, "key_list_type"

    .line 446
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const-string v1, "extra_with_data"

    .line 449
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "extra_with_data"

    .line 451
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 0

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/ActivityLauncher;->c(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 459
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    const-string v0, "ExtraLauncher"

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShuffleMode() - on : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->setShuffle(Z)V

    return-void
.end method

.method private c(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, -0x1

    .line 617
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/ActivityLauncher;->c(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3

    .line 621
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/music/common/activity/MusicMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "launchMusicPlayer"

    const/4 v2, 0x0

    .line 622
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    .line 627
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const-string v1, "extra_from"

    .line 629
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 631
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "extra_with"

    .line 632
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method private c()V
    .locals 3

    .line 270
    new-instance v0, Landroid/content/ComponentName;

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/music/common/activity/MusicMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    invoke-static {v0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 273
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private d()V
    .locals 0

    .line 428
    invoke-static {p0}, Lcom/samsung/android/app/music/util/LaunchUtils;->b(Landroid/app/Activity;)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 436
    invoke-direct {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->h()Landroid/content/Intent;

    move-result-object v0

    .line 437
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private f()Z
    .locals 3

    .line 487
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.GET_ACCOUNTS"

    .line 488
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 491
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 493
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 6

    const-string v0, "activity"

    .line 574
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/ActivityLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0xa

    .line 575
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 577
    invoke-virtual {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    .line 578
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    const-string v4, "com.sec.android.app.music"

    .line 579
    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 580
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 581
    iget v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    return-void

    .line 586
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->e()V

    return-void
.end method

.method private h()Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 613
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/ActivityLauncher;->c(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "ExtraLauncher"

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->finish()V

    return-void

    .line 219
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/IntentExtensionKt;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->c()V

    goto :goto_0

    .line 222
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/ActivityLauncher;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SMUSIC-ExtraLauncher"

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error happened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "ExtraLauncher"

    const-string v1, "onDestroy()"

    .line 265
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "ExtraLauncher"

    const-string v1, "onActivityNewIntent"

    .line 235
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->finish()V

    return-void

    .line 241
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/IntentExtensionKt;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->c()V

    goto :goto_0

    .line 244
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/ActivityLauncher;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SMUSIC-ExtraLauncher"

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error happened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->finish()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "ExtraLauncher"

    const-string v1, "onPause()"

    .line 258
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->finish()V

    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
