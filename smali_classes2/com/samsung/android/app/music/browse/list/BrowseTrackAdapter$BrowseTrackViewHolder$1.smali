.class Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder$1;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 141
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder$1;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;->getAdapterPosition()I

    move-result p1

    if-gez p1, :cond_0

    const-string v0, "UiList"

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;

    iget-object v2, v2, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " initThumbnailButton onClick() invalid position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder$1;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder$1;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;->getItemId()J

    move-result-wide v2

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;->onItemClick(Landroid/view/View;IJ)V

    return-void
.end method
