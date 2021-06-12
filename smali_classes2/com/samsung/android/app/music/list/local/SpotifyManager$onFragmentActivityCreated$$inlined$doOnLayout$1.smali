.class public final Lcom/samsung/android/app/music/list/local/SpotifyManager$onFragmentActivityCreated$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SpotifyManager;->onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SpotifyManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$onFragmentActivityCreated$$inlined$doOnLayout$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 37
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 178
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$onFragmentActivityCreated$$inlined$doOnLayout$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/music/list/local/HeartFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->findLastVisibleItemPosition()I

    move-result p1

    .line 179
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$onFragmentActivityCreated$$inlined$doOnLayout$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$onFragmentActivityCreated$$inlined$doOnLayout$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {p3}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->d(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-lt p1, p2, :cond_0

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$onFragmentActivityCreated$$inlined$doOnLayout$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->e(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Landroid/widget/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    .line 182
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$onFragmentActivityCreated$$inlined$doOnLayout$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a(Lcom/samsung/android/app/music/list/local/SpotifyManager;Z)V

    :cond_0
    return-void
.end method
