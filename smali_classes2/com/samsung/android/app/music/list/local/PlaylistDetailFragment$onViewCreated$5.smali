.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$5;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$5;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 2

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "UiList"

    .line 501
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$5;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " recommendToPlaylist onItemClick() position="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", id="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$5;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getId()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", view="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$5;->b:Landroid/view/View;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 499
    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p2, :cond_0

    return-void

    .line 504
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$5;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->e(I)J

    move-result-wide p1

    .line 505
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$5;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    iget-object p4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$5;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(JJ)V

    return-void
.end method
