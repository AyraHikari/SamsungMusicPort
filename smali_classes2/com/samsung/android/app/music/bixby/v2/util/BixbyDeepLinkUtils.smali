.class public final Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;,
        Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;,
        Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BixbyDeepLinkUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 54
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extract() - data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 56
    invoke-interface {p2, v0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;->a(Landroid/content/Intent;)V

    return-void

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 61
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "settings"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_1
    const-string v3, "downloadbasket"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_2
    const-string v3, "radio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "queue"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v3, "tracks"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_5
    const-string v3, "search"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "player"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_7
    const-string v3, "lyrics"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_8
    const-string v3, "favorites"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_9
    const-string v3, "playlists"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 108
    invoke-interface {p2, v0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;->a(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 97
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sec.android.app.music.intent.action.LAUNCH_DETAIL_LIST"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.music"

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "launchListType"

    const v1, 0x100004

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "launchListID"

    const-wide/16 v1, -0xb

    .line 101
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "launchListName"

    .line 103
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/util/ListUtils;->b(J)I

    move-result v1

    .line 102
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "launchMusicPlayer"

    .line 104
    invoke-virtual {p1, p0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    invoke-interface {p2, p1}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;->a(Landroid/content/Intent;)V

    goto :goto_2

    .line 94
    :pswitch_1
    new-instance p1, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;

    invoke-direct {p1, p0, p2, v0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$1;)V

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;->a(Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;)V

    goto :goto_2

    :pswitch_2
    const-string v1, "trackId"

    .line 90
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$1;)V

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;->a(Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;)V

    goto :goto_2

    :pswitch_3
    const-string p0, "withSettings"

    .line 87
    invoke-static {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 86
    invoke-interface {p2, p0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;->a(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_4
    const-string p0, "withSearch"

    .line 83
    invoke-static {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 82
    invoke-interface {p2, p0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;->a(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_5
    const-string p0, "withQueue"

    .line 79
    invoke-static {v5, p0}, Lcom/samsung/android/app/music/ActivityLauncher;->a(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 78
    invoke-interface {p2, p0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;->a(Landroid/content/Intent;)V

    goto :goto_2

    .line 75
    :pswitch_6
    invoke-static {v5}, Lcom/samsung/android/app/music/ActivityLauncher;->a(Z)Landroid/content/Intent;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;->a(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_7
    const-string p0, "withDiscover"

    .line 72
    invoke-static {p0}, Lcom/samsung/android/app/music/ActivityLauncher;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 71
    invoke-interface {p2, p0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;->a(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_8
    const p1, 0x10004

    .line 68
    invoke-static {p0, p1, v0, v0, v0}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    .line 67
    invoke-interface {p2, p0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;->a(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_9
    const p1, 0x110001

    .line 64
    invoke-static {p0, p1, v0, v0, v0}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    .line 63
    invoke-interface {p2, p0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;->a(Landroid/content/Intent;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f36471f -> :sswitch_9
        -0x6a6895a9 -> :sswitch_8
        -0x40d6180c -> :sswitch_7
        -0x3ac1651f -> :sswitch_6
        -0x36059a58 -> :sswitch_5
        -0x3399c778 -> :sswitch_4
        0x66f1911 -> :sswitch_3
        0x67413fb -> :sswitch_2
        0x3efbfc4e -> :sswitch_1
        0x5582bc23 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
