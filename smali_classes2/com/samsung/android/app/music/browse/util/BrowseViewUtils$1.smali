.class final Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$1;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    const-string v1, "BrowseViewUtils"

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpanSize. position over the count. pos - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", count - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$1;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$1;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    .line 88
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->getSpanCount()I

    move-result p1

    :goto_0
    return p1
.end method
