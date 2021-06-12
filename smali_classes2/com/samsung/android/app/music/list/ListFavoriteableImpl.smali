.class public final Lcom/samsung/android/app/music/list/ListFavoriteableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;
.implements Lcom/samsung/android/app/musiclibrary/ui/Refreshable;


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

.field private final d:Lkotlin/properties/ReadWriteProperty;

.field private e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/samsung/android/app/music/list/favorite/AddResultListener;

.field private final g:Landroid/support/v4/app/Fragment;

.field private final h:Lcom/samsung/android/app/music/list/favorite/Category;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "listType"

    const-string v4, "getListType()Ljava/lang/Integer;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "favoriteOn"

    const-string v4, "getFavoriteOn()Ljava/lang/Boolean;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/list/favorite/Category;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->g:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->h:Lcom/samsung/android/app/music/list/favorite/Category;

    .line 25
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$listType$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$listType$2;-><init>(Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->b:Lkotlin/Lazy;

    .line 27
    new-instance p1, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->g:Landroid/support/v4/app/Fragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->c:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    .line 29
    sget-object p1, Lkotlin/properties/Delegates;->a:Lkotlin/properties/Delegates;

    .line 103
    new-instance p1, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$$special$$inlined$observable$1;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p0}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)V

    check-cast p1, Lkotlin/properties/ReadWriteProperty;

    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->d:Lkotlin/properties/ReadWriteProperty;

    .line 37
    new-instance p1, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$addResultListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$addResultListener$1;-><init>(Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)V

    check-cast p1, Lcom/samsung/android/app/music/list/favorite/AddResultListener;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->f:Lcom/samsung/android/app/music/list/favorite/AddResultListener;

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->c()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->g:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method private final a()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->b:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/ListFavoriteableImpl;Ljava/lang/Boolean;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method private final a(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->d:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final a(Z)V
    .locals 3

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->a()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x100004

    if-ne v1, v2, :cond_1

    const-string v0, "Playlists"

    goto/16 :goto_9

    :cond_1
    :goto_0
    const v1, 0x100003

    if-nez v0, :cond_2

    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_1
    const v1, 0x110027

    if-nez v0, :cond_4

    goto :goto_2

    .line 86
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    const v1, 0x10027

    if-nez v0, :cond_6

    goto :goto_4

    .line 87
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_7

    :goto_3
    const-string v0, "Artists"

    goto :goto_9

    :cond_7
    :goto_4
    const v1, 0x100002

    if-nez v0, :cond_8

    goto :goto_5

    .line 88
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_9

    const-string v0, "Albums"

    goto :goto_9

    :cond_9
    :goto_5
    const v1, 0x100006

    if-nez v0, :cond_a

    goto :goto_6

    .line 89
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_b

    const-string v0, "Genres"

    goto :goto_9

    :cond_b
    :goto_6
    const v1, 0x100007

    if-nez v0, :cond_c

    goto :goto_7

    .line 90
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_d

    const-string v0, "Folders"

    goto :goto_9

    :cond_d
    :goto_7
    const v1, 0x100008

    if-nez v0, :cond_e

    goto :goto_8

    .line 91
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_f

    const-string v0, "Composers"

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_10

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->g:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "THIC"

    .line 98
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-static {v1, v2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method private final b()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->d:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->e:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)Lcom/samsung/android/app/music/list/favorite/Category;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->h:Lcom/samsung/android/app/music/list/favorite/Category;

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public c()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->c:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->h:Lcom/samsung/android/app/music/list/favorite/Category;

    new-instance v2, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$refresh$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$refresh$1;-><init>(Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)V

    check-cast v2, Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->isFavoriteAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;)V

    return-void
.end method

.method public n_()Ljava/lang/Boolean;
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public o_()V
    .locals 4

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->b()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->b()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->c:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->h:Lcom/samsung/android/app/music/list/favorite/Category;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->deleteFavoriteCategoryAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/DeleteResultListener;ILjava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->c:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->h:Lcom/samsung/android/app/music/list/favorite/Category;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->f:Lcom/samsung/android/app/music/list/favorite/AddResultListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->addFavoriteCategoryAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/AddResultListener;)V

    .line 66
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->b()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->a(Ljava/lang/Boolean;)V

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->b()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->a(Z)V

    return-void
.end method

.method public z()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->g:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->g:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->w_()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
