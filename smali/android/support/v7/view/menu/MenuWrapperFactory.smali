.class public final Landroid/support/v7/view/menu/MenuWrapperFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrapSupportMenu(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenu;)Landroid/view/Menu;
    .locals 1

    .line 40
    new-instance v0, Landroid/support/v7/view/menu/MenuWrapperICS;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/view/menu/MenuWrapperICS;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenu;)V

    return-object v0
.end method

.method public static wrapSupportMenuItem(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)Landroid/view/MenuItem;
    .locals 2

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 45
    new-instance v0, Landroid/support/v7/view/menu/MenuItemWrapperJB;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/view/menu/MenuItemWrapperJB;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V

    return-object v0
.end method

.method public static wrapSupportSubMenu(Landroid/content/Context;Landroid/support/v4/internal/view/SupportSubMenu;)Landroid/view/SubMenu;
    .locals 1

    .line 52
    new-instance v0, Landroid/support/v7/view/menu/SubMenuWrapperICS;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/view/menu/SubMenuWrapperICS;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportSubMenu;)V

    return-object v0
.end method
