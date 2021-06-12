.class public final Lcom/samsung/android/app/music/list/local/PlaylistFragment$onActionModeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onActionModeListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onActionModeListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->a(Z)V

    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .line 222
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onActionModeListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->a(Z)V

    return-void
.end method
