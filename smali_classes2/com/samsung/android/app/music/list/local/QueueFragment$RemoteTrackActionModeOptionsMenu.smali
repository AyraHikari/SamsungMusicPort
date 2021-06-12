.class Lcom/samsung/android/app/music/list/local/QueueFragment$RemoteTrackActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/QueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteTrackActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/QueueFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$RemoteTrackActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/QueueFragment;Lcom/samsung/android/app/music/list/local/QueueFragment$1;)V
    .locals 0

    .line 789
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment$RemoteTrackActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 792
    new-instance p1, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$RemoteTrackActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    const v1, 0x7f14000c

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$RemoteTrackActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 794
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$RemoteTrackActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method
