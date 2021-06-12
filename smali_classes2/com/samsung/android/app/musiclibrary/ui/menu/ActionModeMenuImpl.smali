.class public Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;


# instance fields
.field protected b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-eqz p1, :cond_0

    .line 20
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 26
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
