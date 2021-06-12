.class public final Lcom/samsung/android/app/music/util/player/PlayUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/MediaCommandAction;


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "extra_type"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_name"

    .line 35
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/music/util/player/PlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "PlayUtils"

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playVia() - type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " search: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->play(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "album"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/player/util/AlbumPlayUtils;->play(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "artist"

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/player/util/ArtistPlayUtils;->play(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "playlist"

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 29
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/util/player/PlaylistPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
