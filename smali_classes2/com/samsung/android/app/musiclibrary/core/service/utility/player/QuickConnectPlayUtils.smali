.class public final Lcom/samsung/android/app/musiclibrary/core/service/utility/player/QuickConnectPlayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-QuickConnect"

.field private static final TAG:Ljava/lang/String; = "QuickConnect"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertUriToLong(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 47
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 48
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "SMUSIC-QuickConnect"

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertUrisToLongArray() id is null. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] uri was wrong."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 53
    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getIdsInArray(Ljava/util/List;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 59
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 60
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 62
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static play(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7

    const-string v0, "DEVICE"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "android.intent.extra.STREAM"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "SMUSIC-QuickConnect"

    const-string p1, "play() uris are null. Please check extra from Quick connect."

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/QuickConnectPlayUtils;->convertUriToLong(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->convertToMusicProviderIds(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "SMUSIC-QuickConnect"

    const-string p1, "play() can\'t get id from Music Provider. Please check provider."

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 40
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/QuickConnectPlayUtils;->getIdsInArray(Ljava/util/List;)[J

    move-result-object v3

    .line 41
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->openList(Ljava/lang/String;[JILjava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method
