.class public Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrowseTrackViewHolder"
.end annotation


# instance fields
.field protected a:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter<",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    const p3, 0x7f130163

    .line 130
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;->a:Landroid/view/View;

    .line 131
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 132
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter<",
            "*>;)V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;->thumbnailView:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
