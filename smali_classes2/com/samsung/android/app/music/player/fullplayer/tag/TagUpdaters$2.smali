.class final enum Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$2;
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

    .line 38
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

    .line 41
    const-class v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;

    return-object v0
.end method

.method public update(Landroid/view/View;Ljava/lang/Object;Landroid/text/SpannableStringBuilder;I)Z
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 52
    check-cast p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;

    .line 54
    iget p4, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->c:I

    const/high16 v0, 0x10000

    if-ne p4, v0, :cond_2

    .line 55
    iget-wide v0, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->d:J

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(J)I

    move-result p2

    const/16 p4, 0x50

    if-ne p2, p4, :cond_1

    const p2, 0x7f0b051c

    .line 57
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;->a(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_1
    const/16 p4, 0x5a

    if-ne p2, p4, :cond_4

    const p2, 0x7f0b04c7

    .line 59
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;->a(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 61
    :cond_2
    iget-boolean p4, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->a:Z

    if-eqz p4, :cond_4

    .line 62
    iget-boolean p4, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->b:Z

    if-eqz p4, :cond_3

    const p2, 0x7f0b0504

    const p4, 0x7f1001cd

    const v0, 0x7f1001dc

    .line 64
    invoke-static {p1, p2, p4, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;->a(Landroid/content/Context;III)Ljava/lang/CharSequence;

    move-result-object p1

    .line 63
    invoke-virtual {p3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 66
    :cond_3
    iget p2, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->c:I

    const/high16 p4, 0x80000

    if-ne p2, p4, :cond_4

    .line 67
    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
