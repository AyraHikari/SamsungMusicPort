.class Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$1;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 351
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$1;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;

    .line 352
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$1;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;

    .line 353
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method
