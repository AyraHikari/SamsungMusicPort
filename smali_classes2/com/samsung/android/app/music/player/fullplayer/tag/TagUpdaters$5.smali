.class final enum Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$5;
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

    .line 129
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

    .line 132
    const-class v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;

    return-object v0
.end method

.method public update(Landroid/view/View;Ljava/lang/Object;Landroid/text/SpannableStringBuilder;I)Z
    .locals 2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    :cond_0
    const/16 p4, 0x8

    .line 141
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 143
    check-cast p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;

    .line 144
    iget p4, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->c:I

    const/high16 v0, 0x10000

    if-ne p4, v0, :cond_2

    .line 145
    iget-wide v0, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->d:J

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(J)I

    move-result p2

    const/16 p4, 0x50

    if-ne p2, p4, :cond_1

    .line 147
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p4, 0x5a

    if-ne p2, p4, :cond_3

    .line 149
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_2
    iget p2, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->c:I

    const/high16 p4, 0x80000

    if-ne p2, p4, :cond_3

    .line 152
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return p3
.end method
