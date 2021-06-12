.class public final Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;,
        Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$Companion;


# instance fields
.field private c:Lcom/samsung/android/app/music/network/NetworkManager;

.field private final d:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private k:I

.field private l:Z

.field private final m:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "checkedItemIds"

    const-string v4, "getCheckedItemIds()[J"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "addToFavorite"

    const-string v4, "getAddToFavorite()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playlistId"

    const-string v4, "getPlaylistId()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "isSelectedAll"

    const-string v4, "isSelectedAll()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->b:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 71
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$networkStateChangedListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$networkStateChangedListener$1;-><init>(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)V

    check-cast v0, Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->d:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    .line 73
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$checkedItemIds$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$checkedItemIds$2;-><init>(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->e:Lkotlin/Lazy;

    .line 77
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$addToFavorite$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$addToFavorite$2;-><init>(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->f:Lkotlin/Lazy;

    .line 81
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$playlistId$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$playlistId$2;-><init>(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->i:Lkotlin/Lazy;

    .line 85
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$isSelectedAll$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$isSelectedAll$2;-><init>(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->j:Lkotlin/Lazy;

    const/4 v0, 0x2

    .line 89
    iput v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->k:I

    .line 93
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->l:Z

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->l:Z

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)[J
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->d()[J

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)Z
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->j()Z

    move-result p0

    return p0
.end method

.method private final d()[J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method private final e(I)Landroid/database/Cursor;
    .locals 5

    .line 229
    new-instance v0, Landroid/database/MatrixCursor;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->projection:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->l_:Z

    if-eqz p1, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_0
    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 229
    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method private final f()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final i()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final j()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->j:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->c()Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 206
    :cond_2
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    if-lt v3, v1, :cond_4

    goto :goto_1

    .line 391
    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    if-ge v3, v1, :cond_5

    const/4 v1, -0x3

    .line 210
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->e(I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_5
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isAddQueueEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, -0x8

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->e(I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->f()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, -0x9

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->e(I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    check-cast v0, Ljava/util/Collection;

    .line 394
    new-array p2, v2, [Landroid/database/Cursor;

    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    check-cast p2, [Landroid/database/Cursor;

    .line 215
    new-instance v0, Landroid/database/MergeCursor;

    invoke-direct {v0, p2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    check-cast v0, Landroid/database/Cursor;

    invoke-super {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 216
    iget p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->k:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_8

    const/4 v2, 0x1

    :cond_8
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->e(Z)V

    return-void

    .line 394
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 188
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    .line 189
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->k:I

    .line 188
    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(II)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;
    .locals 2

    .line 176
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "name"

    .line 177
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "_id"

    .line 178
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "_id"

    .line 179
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 180
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "this.activity ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/16 p2, 0x7c0

    if-ne p1, p2, :cond_0

    .line 223
    invoke-virtual {v0, v1, p3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 224
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    const-string v0, "233"

    const/4 v1, 0x0

    .line 136
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/music/network/NetworkManager;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->c:Lcom/samsung/android/app/music/network/NetworkManager;

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 141
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->c:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->d:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->c:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->d:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 147
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f100246

    .line 153
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->h(I)Landroid/view/View;

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 157
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;

    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->f:Ljava/lang/String;

    const-string v0, "MediaContents.Playlists.DEFAULT_SORT_ORDER"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    move-object v3, p0

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v5, 0x7f020220

    invoke-direct {v4, v5, v2, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    move-object p2, v2

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    const/4 p1, 0x1

    .line 162
    invoke-static {p0, v0, p1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v3, "filter_option_playlist"

    invoke-interface {p2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->k:I

    .line 164
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->c(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->g()I

    move-result p2

    invoke-static {p0, p2, v2, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v2, "AddToPlaylist"

    .line 169
    new-array v1, v1, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 170
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/local/CreatePlaylistPopupShowExecutor;

    move-object v4, p0

    check-cast v4, Landroid/support/v4/app/Fragment;

    invoke-direct {v3, p2, v4}, Lcom/samsung/android/app/music/bixby/v1/executor/local/CreatePlaylistPopupShowExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/support/v4/app/Fragment;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v1, v0

    .line 171
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/store/CurrentPlaylistExecutor;

    invoke-direct {v0, p2, v4}, Lcom/samsung/android/app/music/bixby/v1/executor/store/CurrentPlaylistExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/support/v4/app/Fragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v0, v1, p1

    .line 168
    invoke-interface {p2, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_0
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 184
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method
