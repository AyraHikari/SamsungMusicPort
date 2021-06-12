.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollRequest"
.end annotation


# instance fields
.field action:I

.field position:I

.field speedFactor:F


# direct methods
.method private constructor <init>(IIF)V
    .locals 0

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->action:I

    .line 825
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->position:I

    .line 826
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->speedFactor:F

    return-void
.end method

.method static obtain(IIF)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;
    .locals 1

    .line 836
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;-><init>(IIF)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scroll-type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", speed-factor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->speedFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
