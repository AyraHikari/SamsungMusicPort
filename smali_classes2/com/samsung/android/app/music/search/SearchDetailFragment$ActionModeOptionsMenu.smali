.class final Lcom/samsung/android/app/music/search/SearchDetailFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/SearchDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/search/SearchDetailFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/search/SearchDetailFragment;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/search/SearchDetailFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/search/SearchDetailFragment;Lcom/samsung/android/app/music/search/SearchDetailFragment$1;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/search/SearchDetailFragment;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 215
    new-instance p1, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/search/SearchDetailFragment;

    const v1, 0x7f14000f

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 217
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method
