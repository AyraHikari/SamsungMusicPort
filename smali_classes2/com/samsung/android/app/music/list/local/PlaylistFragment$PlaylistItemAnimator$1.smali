.class final Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->K()V

    :cond_0
    return-void
.end method
