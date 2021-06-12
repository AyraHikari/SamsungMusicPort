.class final Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MenuWrapper"
.end annotation


# instance fields
.field private final a:Landroid/view/Menu;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/Menu;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Landroid/util/SparseArray<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menuItems"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    const-string v0, "menu.add(titleRes)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const-string p2, "menu.add(groupId, itemId, order, titleRes)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const-string v0, "title"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const-string p2, "menu.add(groupId, itemId, order, title)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const-string v0, "menu.add(title)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 10

    const-string v0, "caller"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specifics"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outSpecificItems"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 155
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    move-result v1

    return v1
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object p1

    const-string v0, "menu.addSubMenu(titleRes)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object p1

    const-string p2, "menu.addSubMenu(groupId, itemId, order, titleRes)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    const-string v0, "title"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    const-string p2, "menu.addSubMenu(groupId, itemId, order, title)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    const-string v0, "menu.addSubMenu(title)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "menuItems.valueAt(index)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public hasVisibleItems()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public performIdentifierAction(II)Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->performIdentifierAction(II)Z

    move-result p1

    return p1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

.method public removeGroup(I)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->removeGroup(I)V

    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->removeItem(I)V

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1, p2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->setQwertyMode(Z)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->a:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    return v0
.end method
