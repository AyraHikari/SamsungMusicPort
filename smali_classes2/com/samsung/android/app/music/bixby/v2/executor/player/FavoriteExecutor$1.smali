.class Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3

    .line 66
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object p2

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    const-string v1, "extra.list_length"

    .line 68
    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Music_12_2"

    goto :goto_0

    :cond_0
    const-string p2, "Music_13_2"

    :goto_0
    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;ILjava/lang/String;)V

    return-void

    .line 74
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 75
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Can not support Favorite because meta is empty."

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "Music_12_5"

    goto :goto_1

    :cond_2
    const-string p2, "Music_13_5"

    :goto_1
    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;ILjava/lang/String;)V

    return-void

    .line 80
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Music_12_6"

    goto :goto_2

    :cond_4
    const-string p2, "Music_13_6"

    :goto_2
    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;ILjava/lang/String;)V

    goto :goto_3

    .line 84
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    :goto_3
    return-void

    .line 89
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v1

    long-to-int p2, v1

    const v1, 0x20004

    if-ne p2, v1, :cond_8

    .line 91
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not support Favorite for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "Music_12_6"

    goto :goto_4

    :cond_7
    const-string p2, "Music_13_6"

    :goto_4
    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;ILjava/lang/String;)V

    goto :goto_5

    .line 94
    :cond_8
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    :goto_5
    return-void
.end method
