.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 817
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 821
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)J

    move-result-wide v0

    const-wide/16 v2, -0xb

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const p1, 0x7f140002

    goto :goto_0

    :cond_0
    const/high16 p1, 0x7f140000

    .line 826
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;I)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 827
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method
