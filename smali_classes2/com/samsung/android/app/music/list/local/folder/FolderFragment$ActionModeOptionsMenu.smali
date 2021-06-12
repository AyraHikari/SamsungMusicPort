.class final Lcom/samsung/android/app/music/list/local/folder/FolderFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .line 179
    new-instance p1, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;

    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v2, 0x7f140006

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    .line 179
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 183
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method
