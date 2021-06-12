.class Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrowseThemeItemViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 2

    .line 126
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;-><init>(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;->c:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 130
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;
    .locals 0

    .line 123
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;->b(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;
    .locals 4

    .line 140
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;

    .line 141
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001d

    const/4 v3, 0x0

    .line 142
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder$BrowseThemeItemViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method
