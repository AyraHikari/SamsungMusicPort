.class Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$1;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 166
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "User"

    .line 170
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez v0, :cond_1

    return v1

    .line 175
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "no cover art"

    .line 193
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(ZLjava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$1;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V

    goto :goto_0

    .line 177
    :pswitch_1
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getPlayingUri()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/FilePathUtils;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "flac file"

    .line 180
    invoke-static {v2, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(ZLjava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$1;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$1;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    const/16 v3, 0x8

    invoke-static {p1, v0, v3}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "no genre"

    .line 185
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(ZLjava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$1;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V

    goto :goto_0

    :cond_3
    const-string p1, "mp3 file"

    .line 189
    invoke-static {v2, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(ZLjava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$1;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
