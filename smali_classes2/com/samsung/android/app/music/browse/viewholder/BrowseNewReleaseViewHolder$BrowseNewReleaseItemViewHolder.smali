.class Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrowseNewReleaseItemViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 3

    .line 126
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;-><init>(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 131
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;
    .locals 0

    .line 123
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;->b(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;
    .locals 4

    .line 142
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;

    .line 143
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001d

    const/4 v3, 0x0

    .line 144
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method
