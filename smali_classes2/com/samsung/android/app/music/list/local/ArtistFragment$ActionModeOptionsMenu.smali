.class final Lcom/samsung/android/app/music/list/local/ArtistFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/ArtistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/ArtistFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/ArtistFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "menu"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "menuInflater"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance p1, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const v2, 0x7f140007

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p1

    .line 192
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 197
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ActionModeOptionsMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method
