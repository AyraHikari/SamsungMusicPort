.class Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistItemViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrowseHotArtistItemViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 1

    .line 122
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;-><init>(Landroid/view/View;)V

    .line 123
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistItemViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistItemViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistItemViewHolder;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistItemViewHolder;
    .locals 0

    .line 119
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistItemViewHolder;->b(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistItemViewHolder;
    .locals 4

    .line 134
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistItemViewHolder;

    .line 135
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001a

    const/4 v3, 0x0

    .line 136
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder$BrowseHotArtistItemViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method
