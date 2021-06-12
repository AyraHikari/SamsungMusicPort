.class final Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)V
    .locals 1

    .line 331
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const v0, 0x7f1305bb

    .line 332
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    if-eqz p2, :cond_1

    const v0, 0x7f1305bc

    .line 333
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .line 326
    new-instance p1, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v2, 0x7f140006

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 327
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method
