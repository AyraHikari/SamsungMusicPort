.class public abstract Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketSelectAllImpl;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final c:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$Companion;


# instance fields
.field protected b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

.field private final d:Lkotlin/Lazy;

.field private e:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;

.field private f:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

.field private i:Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;

.field private j:I

.field private k:Z

.field private l:[Z

.field private m:[I

.field private final n:Lkotlin/Lazy;

.field private final o:Lkotlin/Lazy;

.field private final p:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "basketContext"

    const-string v4, "getBasketContext()Landroid/content/Context;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "selectAll"

    const-string v4, "getSelectAll()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "selectAllHolder"

    const-string v4, "getSelectAllHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->c:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 57
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$basketContext$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$basketContext$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->d:Lkotlin/Lazy;

    .line 79
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$selectAll$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$selectAll$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->n:Lkotlin/Lazy;

    .line 83
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$selectAllHolder$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$selectAllHolder$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->o:Lkotlin/Lazy;

    .line 87
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$multipleModeListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$multipleModeListener$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->p()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->o()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->q()V

    return-void
.end method

.method private final o()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->n:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    return-object v0
.end method

.method private final p()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->o:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    return-object v0
.end method

.method private final q()V
    .locals 5

    .line 162
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->o()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    move-result-object v0

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->p()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->a()I

    move-result v2

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->w_()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->w_()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 163
    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/BottomBarGetter;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/BottomBarGetter;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/BottomBarGetter;->a()Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->a()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->b()V

    goto :goto_1

    .line 170
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->a()V

    :cond_4
    :goto_1
    return-void
.end method

.method private final r()V
    .locals 3

    .line 329
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;-><init>(Landroid/app/Activity;)V

    .line 330
    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$initBasketHeader$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$initBasketHeader$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->a(Landroid/view/View$OnClickListener;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 335
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;)V

    .line 336
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;

    move-result-object v0

    const-string v1, "builderHeader"

    .line 337
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->b()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v1

    const-string v2, "builderHeader.header"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    .line 338
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->a()Landroid/view/View;

    move-result-object v0

    const-string v2, "builderHeader.rootView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x5

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->addHeaderView(ILandroid/view/View;)V

    return-void
.end method

.method private final s()V
    .locals 3

    .line 342
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->p()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    const-string v2, "selectAllHolder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, -0x578

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 344
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->p()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->c:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$initSelectAll$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$initSelectAll$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->j()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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

    .line 224
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    if-nez p2, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->l:[Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->m:[I

    if-eqz p1, :cond_5

    const-string p1, "UiList"

    const-string p2, "re-check item with savedInstanceState"

    .line 231
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->l:[Z

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->a([Z)Lkotlin/ranges/IntRange;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 381
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Lkotlin/collections/IntIterator;

    invoke-virtual {p2}, Lkotlin/collections/IntIterator;->b()I

    move-result p2

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->m:[I

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    aget v0, v0, p2

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->l:[Z

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    aget-boolean p2, v1, p2

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->c(IZ)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 237
    move-object p2, p1

    check-cast p2, [Z

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->l:[Z

    .line 238
    check-cast p1, [I

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->m:[I

    return-void

    .line 242
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d()V

    .line 243
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_6

    .line 244
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->j:I

    if-le p1, p2, :cond_6

    .line 245
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->j:I

    const/4 p1, 0x1

    .line 246
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->g(Z)V

    .line 248
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->i()V

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->q()V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f1305af

    if-eq p1, v0, :cond_3

    const v0, 0x7f1305b9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->i:Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;

    if-nez p1, :cond_1

    const-string v0, "purchasable"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 288
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "936"

    const-string v1, "9396"

    .line 289
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    if-nez p1, :cond_4

    const-string v0, "deletable"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;->deleteItems()V

    .line 293
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "936"

    const-string v1, "9397"

    .line 294
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;)V
    .locals 2

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->e:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;

    if-nez v0, :cond_0

    const-string v1, "checkableList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;)V

    return-void
.end method

.method protected abstract a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;)V
.end method

.method public final a(Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;)V
    .locals 1

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->i:Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 278
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->k:Z

    const-string v0, "UiList"

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onPageFocused : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->q()V

    return-void
.end method

.method public final varargs a([I)[Ljava/lang/String;
    .locals 2

    const-string v0, "headerTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->e:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;

    if-nez v0, :cond_0

    const-string v1, "checkableList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->a([I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "checkableList.getChecked\u2026mHeaderInfo(*headerTypes)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1

    .line 179
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->f()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketQueryArgs;-><init>(I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected final c()Landroid/content/Context;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method protected final d()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    if-nez v0, :cond_0

    const-string v1, "header"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected abstract f()I
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract i()V
.end method

.method protected j()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;
    .locals 3

    .line 198
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    const-string v1, "artist"

    .line 199
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    const-string v1, "track_id"

    .line 200
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object v0

    const-string v1, "cp_attrs"

    .line 201
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    const-string v1, "audio_id"

    .line 202
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    const-string v1, "explicit"

    .line 203
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    const-string v1, "payment_price"

    const-string v2, "status_code"

    .line 204
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object v0

    const-string v1, "codec"

    .line 208
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object v0

    .line 209
    sget-object v1, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->a:Landroid/net/Uri;

    const-string v2, "MilkContents.Thumbnails.MILK_ALBUM"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x80002

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->a(I)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->g()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 98
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->j:I

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 218
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/support/v4/content/AsyncTaskLoader;

    const-wide/16 v0, 0x0

    .line 219
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 218
    check-cast p1, Landroid/support/v4/content/Loader;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v4.content.AsyncTaskLoader<android.database.Cursor>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "UiList"

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onCreateView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f040071

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026ent_kt, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->b(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->f()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable;->b(I)V

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable;

    if-nez v1, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->f()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable;->c(I)V

    .line 158
    :cond_3
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroyView()V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "UiList"

    const-string v0, "checkedItemPosition is null"

    .line 114
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 118
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 377
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_1

    .line 378
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "checked_position"

    .line 127
    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->c(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "checked_state"

    .line 128
    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->b(Ljava/util/Collection;)[Z

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->r()V

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->s()V

    const/4 p1, 0x0

    .line 138
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->c(Z)V

    .line 139
    sget p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->b_(I)V

    .line 141
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->e:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;

    .line 142
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;Landroid/support/v4/app/Fragment;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->f()I

    move-result v0

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;

    invoke-interface {p1, v0, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable;->a(ILcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;)V

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable;

    if-nez v0, :cond_2

    move-object p1, v1

    :cond_2
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->f()I

    move-result v0

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable;->a(ILcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;)V

    :cond_3
    if-eqz p2, :cond_4

    const-string p1, "checked_state"

    .line 149
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->l:[Z

    const-string p1, "checked_position"

    .line 150
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->m:[I

    :cond_4
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 214
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method
