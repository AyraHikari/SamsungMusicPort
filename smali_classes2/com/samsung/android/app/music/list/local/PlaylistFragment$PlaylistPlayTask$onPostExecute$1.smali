.class final Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayTask$onPostExecute$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayTask;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayTask$onPostExecute$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationsFinished()V
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayTask$onPostExecute$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->K()V

    return-void
.end method
