.class final Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder<",
        "Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TITLE_ARTIST_HEADER_VIEW_TYPE:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutResId()I
    .locals 1

    const v0, 0x7f04009b

    return v0
.end method

.method public getViewType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 187
    check-cast p2, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$7;->onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;I)V
    .locals 1

    .line 204
    iget-object p3, p2, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    const-string v0, "key_title"

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object p2, p2, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;->artistText:Landroid/widget/TextView;

    const-string p3, "extra_artist"

    invoke-interface {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
