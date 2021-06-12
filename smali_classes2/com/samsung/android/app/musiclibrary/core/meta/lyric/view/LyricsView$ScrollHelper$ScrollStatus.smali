.class final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScrollStatus"
.end annotation


# instance fields
.field currState:I

.field dx:I

.field dy:I

.field inputSource:I

.field lastDir:I

.field oldState:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$1;)V
    .locals 0

    .line 1228
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;-><init>()V

    return-void
.end method

.method static matchState(II)Z
    .locals 0

    and-int/lit16 p0, p0, -0x81

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method getState()I
    .locals 1

    .line 1241
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->currState:I

    and-int/lit16 v0, v0, -0x81

    return v0
.end method

.method isAutoScrolled()Z
    .locals 2

    .line 1245
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->currState:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAutoScrolling()Z
    .locals 2

    .line 1249
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->isAutoScrolled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->currState:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->matchState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dx : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->dx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dy : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->dy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", old-state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->oldState:I

    .line 1255
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->access$3100(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", new-state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->currState:I

    .line 1256
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->access$3100(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastDir : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->lastDir:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", input-source : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->inputSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
