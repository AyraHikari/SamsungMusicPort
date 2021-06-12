.class Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder$1;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder$1;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/16 p1, 0x64

    .line 134
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder$1;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder$BrowseNewReleaseItemViewHolder$1;->a:Landroid/support/v4/app/Fragment;

    .line 135
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/app/Activity;)V

    return-void
.end method
