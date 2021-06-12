.class public final Lcom/samsung/android/app/music/menu/ListMenuGroup$PlayableMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/menu/ListMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlayableMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/menu/ListMenuGroup;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 379
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlayableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/view/Menu;I)V
    .locals 0

    .line 397
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 398
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlayableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->e(Lcom/samsung/android/app/music/menu/ListMenuGroup;)I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1305ab

    .line 384
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlayableMenu;->a(Landroid/view/Menu;I)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f1305ab

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 390
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlayableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/Playable;->l_()V

    const/4 p1, 0x1

    :goto_0
    return p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.Playable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
