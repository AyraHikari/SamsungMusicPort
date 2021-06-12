.class Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$1;)V
    .locals 0

    .line 683
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 686
    new-instance p1, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    const v1, 0x7f14000b

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 688
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p1, 0x7f1305bd

    .line 689
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    .line 691
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method
