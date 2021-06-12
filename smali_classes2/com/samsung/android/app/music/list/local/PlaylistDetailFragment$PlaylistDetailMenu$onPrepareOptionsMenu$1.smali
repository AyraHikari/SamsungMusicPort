.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$onPrepareOptionsMenu$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;->a(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[I",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $menu:Landroid/view/Menu;

.field final synthetic $menuEnabled:Z


# direct methods
.method constructor <init>(Landroid/view/Menu;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$onPrepareOptionsMenu$1;->$menu:Landroid/view/Menu;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$onPrepareOptionsMenu$1;->$menuEnabled:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1279
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$onPrepareOptionsMenu$1;->invoke([I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final varargs invoke([I)V
    .locals 5
    .param p1    # [I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    const-string v0, "menuItemIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1553
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 1366
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$onPrepareOptionsMenu$1;->$menu:Landroid/view/Menu;

    invoke-interface {v4, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const-string v4, "it"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$onPrepareOptionsMenu$1;->$menuEnabled:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
