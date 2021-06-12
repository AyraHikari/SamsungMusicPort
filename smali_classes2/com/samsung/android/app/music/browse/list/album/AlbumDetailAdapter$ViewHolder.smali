.class Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;
.super Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;Landroid/view/View;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;Landroid/view/View;I)V

    .line 39
    invoke-static {p3}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->a(I)Z

    move-result p3

    if-eqz p3, :cond_0

    const p1, 0x7f130324

    .line 40
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;->b:Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    const p3, 0x7f130325

    .line 42
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;->c:Landroid/view/View;

    .line 43
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 44
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;->c:Landroid/view/View;

    return-object p0
.end method
