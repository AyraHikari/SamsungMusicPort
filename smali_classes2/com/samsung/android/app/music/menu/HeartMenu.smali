.class public final Lcom/samsung/android/app/music/menu/HeartMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

.field private c:Landroid/view/MenuItem;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/menu/HeartMenu;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "defaultIconColor"

    const-string v4, "getDefaultIconColor()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/menu/HeartMenu;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "favoriteOnDrawable"

    const-string v4, "getFavoriteOnDrawable()Landroid/graphics/drawable/Drawable;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/menu/HeartMenu;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "favoriteOffDrawable"

    const-string v4, "getFavoriteOffDrawable()Landroid/graphics/drawable/Drawable;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/menu/HeartMenu;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->g:Landroid/support/v4/app/Fragment;

    .line 18
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->g:Landroid/support/v4/app/Fragment;

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    .line 20
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/menu/HeartMenu$defaultIconColor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/menu/HeartMenu$defaultIconColor$2;-><init>(Lcom/samsung/android/app/music/menu/HeartMenu;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->d:Lkotlin/Lazy;

    .line 23
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/menu/HeartMenu$favoriteOnDrawable$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/menu/HeartMenu$favoriteOnDrawable$2;-><init>(Lcom/samsung/android/app/music/menu/HeartMenu;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->e:Lkotlin/Lazy;

    .line 28
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/menu/HeartMenu$favoriteOffDrawable$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/menu/HeartMenu$favoriteOffDrawable$2;-><init>(Lcom/samsung/android/app/music/menu/HeartMenu;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->f:Lkotlin/Lazy;

    return-void
.end method

.method private final a()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/menu/HeartMenu;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/menu/HeartMenu;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->g:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/menu/HeartMenu;)I
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/HeartMenu;->a()I

    move-result p0

    return p0
.end method

.method private final b()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/menu/HeartMenu;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private final c()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/menu/HeartMenu;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 4

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1305c0

    .line 37
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->c:Landroid/view/MenuItem;

    .line 39
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;->n_()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_5

    .line 40
    iget-object v1, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;->z()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->c:Landroid/view/MenuItem;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const/4 v1, 0x1

    .line 50
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 51
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/HeartMenu;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/HeartMenu;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f0b0407

    goto :goto_2

    :cond_4
    const p1, 0x7f0b03e0

    .line 54
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->g:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void

    :cond_5
    :goto_3
    const-string v1, "UiList"

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareOptionsMenu - favoriteOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", favoriteable:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", enabled:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;->z()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->c:Landroid/view/MenuItem;

    if-nez p1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_8
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

    .line 60
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f1305c0

    if-ne p1, v0, :cond_1

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/HeartMenu;->b:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;->o_()V

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
