.class final enum Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$2;
.super Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/lyrics/LyricsViewBuilders$1;)V

    return-void
.end method


# virtual methods
.method public build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .locals 1

    .line 56
    sget-object v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$2;->StyleTitleFixed:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->access$200(Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    move-result-object p1

    return-object p1
.end method

.method public hasFixedHeader()Z
    .locals 1

    .line 61
    sget-object v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$2;->StyleTitleFixed:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->hasFixedHeader()Z

    move-result v0

    return v0
.end method
