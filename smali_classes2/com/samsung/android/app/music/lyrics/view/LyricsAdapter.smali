.class public final Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;,
        Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter<",
        "Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDefaultSyncTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final mDefaultTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mDefaultTextSize:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;)V
    .locals 4

    .line 33
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->access$000(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->access$100(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;)I

    move-result v1

    .line 34
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->access$200(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->access$200(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;

    .line 33
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;-><init>(Landroid/content/Context;I[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;)V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 39
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->access$300(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 40
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->access$300(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;->mDefaultTextSize:I

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->access$400(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;)I

    move-result v2

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;->mDefaultTextColor:I

    .line 45
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->access$500(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;)I

    move-result p1

    iget v2, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;->mDefaultTextColor:I

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;->mDefaultSyncTextColor:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;-><init>(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;)V

    return-void
.end method

.method private getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p4

    .line 52
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected onBindViewHolder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p2, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Landroid/view/View;)Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;
    .locals 2

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    iget-object p2, v0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 59
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    .line 60
    iget p1, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;->mDefaultSyncTextColor:I

    if-eq p1, p2, :cond_1

    .line 61
    iget-object p1, v0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    iget p2, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;->mDefaultSyncTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 64
    :cond_0
    iget p1, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;->mDefaultTextColor:I

    if-eq p1, p2, :cond_1

    .line 65
    iget-object p1, v0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    iget p2, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;->mDefaultTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;->mDefaultTextSize:I

    if-eqz p1, :cond_2

    .line 69
    iget-object p1, v0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    const/4 p2, 0x0

    iget v1, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;->mDefaultTextSize:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Landroid/view/View;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;->onCreateViewHolder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Landroid/view/View;)Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
