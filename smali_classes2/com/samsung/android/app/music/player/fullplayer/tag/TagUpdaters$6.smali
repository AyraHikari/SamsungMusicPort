.class final enum Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$6;
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

    .line 158
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

    .line 161
    const-class v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;

    return-object v0
.end method

.method public update(Landroid/view/View;Ljava/lang/Object;Landroid/text/SpannableStringBuilder;I)Z
    .locals 3

    const/4 p4, 0x0

    if-nez p2, :cond_0

    return p4

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 172
    check-cast p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;

    .line 173
    iget-wide v0, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->d:J

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(J)I

    move-result v0

    .line 174
    iget v1, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->c:I

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_2

    .line 175
    iget-wide v1, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->d:J

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->c(J)I

    move-result p4

    .line 176
    iget-wide v1, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->d:J

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->b(J)I

    move-result p2

    const/16 v1, 0x50

    const/16 v2, 0x20

    if-ne v0, v1, :cond_1

    .line 178
    invoke-static {p1, p4}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    .line 179
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_1
    const/16 p4, 0x5a

    if-ne v0, p4, :cond_4

    const p4, 0x7f0b04c7

    .line 181
    invoke-static {p1, p4}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 182
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 184
    :cond_2
    iget-boolean v1, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->a:Z

    if-eqz v1, :cond_4

    .line 185
    iget-boolean v1, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->b:Z

    if-eqz v1, :cond_3

    return p4

    .line 187
    :cond_3
    iget p2, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->c:I

    const/high16 p4, 0x80000

    if-ne p2, p4, :cond_4

    .line 188
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;->c(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
