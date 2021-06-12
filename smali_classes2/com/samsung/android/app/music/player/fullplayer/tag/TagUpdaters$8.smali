.class final enum Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$8;
.super Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$1;)V

    return-void
.end method


# virtual methods
.method public dataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 219
    const-class v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$LyricsType;

    return-object v0
.end method

.method public update(Landroid/view/View;Ljava/lang/Object;Landroid/text/SpannableStringBuilder;I)Z
    .locals 1

    const/4 p4, 0x0

    if-nez p2, :cond_0

    return p4

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 229
    check-cast p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$LyricsType;

    .line 230
    iget v0, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$LyricsType;->a:I

    if-nez v0, :cond_1

    return p4

    .line 233
    :cond_1
    iget p2, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$LyricsType;->a:I

    const/4 p4, 0x2

    if-ne p2, p4, :cond_2

    .line 234
    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;->f(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;->e(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 233
    :goto_0
    invoke-virtual {p3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 p1, 0x1

    return p1
.end method
