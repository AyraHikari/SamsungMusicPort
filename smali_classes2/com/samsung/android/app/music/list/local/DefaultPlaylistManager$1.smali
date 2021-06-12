.class final Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$1;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setViewEnabled(Z)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$1;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->c()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ebd70a4    # 0.37f

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAlpha(F)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$1;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->a(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;->a(Z)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$1;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->b(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;)Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->setViewEnabled(Z)V

    return-void
.end method
