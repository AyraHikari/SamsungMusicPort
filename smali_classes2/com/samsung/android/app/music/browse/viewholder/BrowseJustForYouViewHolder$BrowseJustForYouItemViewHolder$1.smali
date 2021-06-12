.class Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;->a(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$1;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 530
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$1;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz p1, :cond_0

    .line 531
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->a(Landroid/support/v4/app/FragmentActivity;)V

    :cond_0
    return-void
.end method
