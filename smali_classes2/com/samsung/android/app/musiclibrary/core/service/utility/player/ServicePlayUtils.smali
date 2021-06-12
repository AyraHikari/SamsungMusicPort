.class public final Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/MediaCommandAction;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-PlayUtils"

.field private static final TAG:Ljava/lang/String; = "PlayUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enqueueContents(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    .line 56
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->getExtraListFromIntent(Landroid/content/Context;Landroid/content/Intent;Z)[J

    move-result-object p0

    if-eqz p0, :cond_1

    .line 57
    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->enqueue([J)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "PlayUtils"

    const-string p1, "Failed to enqueue because the given list is null or size 0"

    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getAudioIds(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)[J
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 71
    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->getExtraListFromIntent(Landroid/content/Context;Landroid/content/Intent;Z)[J

    move-result-object p0

    return-object p0

    .line 73
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->getMatchedUriType(Landroid/net/Uri;)I

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x0

    .line 79
    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->getExtraListFromIntent(Landroid/content/Context;Landroid/content/Intent;Z)[J

    move-result-object p0

    return-object p0
.end method

.method private static getExtraListFromIntent(Landroid/content/Context;Landroid/content/Intent;Z)[J
    .locals 2

    const-string v0, "list"

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 103
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_3

    .line 110
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->convertToMusicProviderIds(Landroid/content/Context;[J)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 111
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->getIdsInArray(Ljava/util/List;)[J

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    return-object p1

    :cond_4
    :goto_1
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

    .line 122
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 123
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 125
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

.method private static getMatchedUriType(Landroid/net/Uri;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 88
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x3

    return p0

    .line 90
    :cond_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static pause()V
    .locals 1

    .line 152
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->pause()V

    return-void
.end method

.method public static play()V
    .locals 1

    .line 148
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->play()V

    return-void
.end method

.method public static play(Ljava/lang/String;[JI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 131
    invoke-static {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JILjava/lang/String;Z)V

    return-void
.end method

.method private static play(Ljava/lang/String;[JILjava/lang/String;Z)V
    .locals 8

    const-string v0, "PlayUtils"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play() key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " deviceId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    .line 144
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->openList(Ljava/lang/String;[JILjava/lang/String;Z)V

    return-void
.end method

.method public static play(Ljava/lang/String;[JIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-static {p0, p1, p2, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JILjava/lang/String;Z)V

    return-void
.end method

.method public static playContents(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "base_uri"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 43
    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->getAudioIds(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)[J

    move-result-object p0

    if-eqz p0, :cond_1

    .line 44
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "listPosition"

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    .line 52
    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "PlayUtils"

    const-string p1, "play() can\'t get id from Music Provider. Please check provider."

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static playContentsFromMediaBrowser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "base_uri"

    .line 31
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 33
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 34
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playContents(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static playNext()V
    .locals 1

    .line 160
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->playNext()V

    return-void
.end method

.method public static playPrevious()V
    .locals 1

    .line 156
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->playPrevious()V

    return-void
.end method

.method public static startCommand(Ljava/lang/String;)V
    .locals 1

    .line 164
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;)V

    return-void
.end method

.method public static startCommand(Ljava/lang/String;I)V
    .locals 1

    .line 168
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;I)V

    return-void
.end method
