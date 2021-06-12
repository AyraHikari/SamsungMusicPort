.class Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreItemViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrowseGenreItemViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 2

    .line 124
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;-><init>(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreItemViewHolder;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 126
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreItemViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreItemViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreItemViewHolder;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreItemViewHolder;
    .locals 0

    .line 121
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreItemViewHolder;->b(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreItemViewHolder;
    .locals 4

    .line 136
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreItemViewHolder;

    .line 137
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001c

    const/4 v3, 0x0

    .line 138
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder$BrowseGenreItemViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method
