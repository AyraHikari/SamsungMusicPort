.class final Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

.field private c:Landroid/view/Menu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 593
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    .line 608
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)V

    .line 609
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;->c:Landroid/view/Menu;

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;->c:Landroid/view/Menu;

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .line 600
    new-instance p1, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    .line 601
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v2, 0x7f14000d

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    .line 600
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 604
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method
