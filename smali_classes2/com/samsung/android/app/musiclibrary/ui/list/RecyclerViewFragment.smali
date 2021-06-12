.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/samsung/android/app/musiclibrary/ui/Deleteable;
.implements Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/GoToTopManager;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/Playable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableList;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/SupportActionModeInvoker;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemClickListenerWrapper;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnThumbnailClickListenerWrapper;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "*>;>",
        "Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/Deleteable;",
        "Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;",
        "Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;",
        "Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/GoToTopManager;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/Playable;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableList;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/SupportActionModeInvoker;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;"
    }
.end annotation


# static fields
.field private static final ac:Z

.field static final synthetic g:[Lkotlin/reflect/KProperty;

.field public static final h:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Companion;


# instance fields
.field private final A:Lkotlin/Lazy;

.field private final B:Lkotlin/Lazy;

.field private final C:Lkotlin/Lazy;

.field private final D:Lkotlin/Lazy;

.field private E:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

.field private F:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

.field private G:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

.field private final H:Lkotlin/Lazy;

.field private I:Z

.field private J:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;

.field private K:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

.field private L:Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

.field private M:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

.field private N:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

.field private O:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

.field private P:J

.field private final Q:Lkotlin/Lazy;

.field private R:Z

.field private S:Ljava/lang/Boolean;

.field private T:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

.field private U:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

.field private V:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "TT;>.ActionMode",
            "ListenerImpl;"
        }
    .end annotation
.end field

.field private final W:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

.field private final X:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;

.field private final Y:Ljava/lang/Runnable;

.field private Z:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

.field private a:Z

.field private aa:Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

.field private b:Z

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private i:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private j:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private k:Landroid/view/View;

.field private l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private o:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

.field private p:Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

.field private q:Z

.field private r:Z

.field private s:Z

.field private final t:Lkotlin/Lazy;

.field private u:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field private final v:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "TT;>.",
            "ListLoaderCallbacksWrapper;"
        }
    .end annotation
.end field

.field private w:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private x:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;

.field private y:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

.field private final z:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "onListActionModeListener"

    const-string v4, "getOnListActionModeListener()Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "listLoaderIds"

    const-string v4, "getListLoaderIds()Ljava/util/HashSet;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "extraLoaderIds"

    const-string v4, "getExtraLoaderIds()Ljava/util/HashSet;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "viewEnablers"

    const-string v4, "getViewEnablers()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "buttonBackgroundShowables"

    const-string v4, "getButtonBackgroundShowables()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "onItemCountListeners"

    const-string v4, "getOnItemCountListeners()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "indexViewObservers"

    const-string v4, "getIndexViewObservers()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "keyObservable"

    const-string v4, "getKeyObservable()Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->h:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Companion;

    .line 1404
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->ac:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->i:I

    .line 114
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->j:I

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->m:Z

    .line 135
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onListActionModeListener$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onListActionModeListener$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->t:Lkotlin/Lazy;

    .line 139
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    invoke-direct {v1, p0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->v:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    .line 146
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$listLoaderIds$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$listLoaderIds$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->z:Lkotlin/Lazy;

    .line 148
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$extraLoaderIds$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$extraLoaderIds$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->A:Lkotlin/Lazy;

    .line 150
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$viewEnablers$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$viewEnablers$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->B:Lkotlin/Lazy;

    .line 153
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 154
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$buttonBackgroundShowables$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$buttonBackgroundShowables$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 152
    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->C:Lkotlin/Lazy;

    .line 156
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onItemCountListeners$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onItemCountListeners$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D:Lkotlin/Lazy;

    .line 163
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$indexViewObservers$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$indexViewObservers$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->H:Lkotlin/Lazy;

    .line 165
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->I:Z

    const-wide/16 v1, 0x7d0

    .line 177
    iput-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->P:J

    .line 179
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$keyObservable$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$keyObservable$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->Q:Lkotlin/Lazy;

    .line 181
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->R:Z

    .line 203
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$showButtonBgSettingChangedListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$showButtonBgSettingChangedListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->W:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    .line 210
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->X:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;

    .line 252
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$notifyDataSetChangedRunnable$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$notifyDataSetChangedRunnable$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->Y:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic N()Z
    .locals 1

    .line 96
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->ac:Z

    return v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 735
    sget p1, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_spacing_bottom:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->i(I)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setListSpaceBottom"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 458
    check-cast p2, Landroid/os/Bundle;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->c(ILandroid/os/Bundle;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: initListLoader"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/support/v4/content/Loader;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->aa:Landroid/support/v4/content/Loader;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d:Landroid/view/View;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1331
    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setReorderable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->S:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->r:Z

    return-void
.end method

.method private final a(Landroid/view/View;IJZ)Z
    .locals 9

    .line 789
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v0

    .line 790
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 792
    new-instance v8, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;IILkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 804
    sget v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->c:I

    if-ne v0, v2, :cond_1

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->invoke()V

    goto :goto_0

    .line 805
    :cond_1
    sget v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d:I

    if-ne v0, v2, :cond_2

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->invoke()V

    goto :goto_0

    .line 806
    :cond_2
    sget v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->invoke()V

    goto :goto_0

    .line 807
    :cond_3
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;->a()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 808
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->F()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->J()V

    .line 809
    :cond_4
    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$invokeItemClick$1;->invoke()V

    .line 812
    :cond_5
    :goto_0
    iget-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_7

    const-string v0, "UiList"

    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onItemClick() pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;->onItemClick(Landroid/view/View;IJ)V

    :cond_6
    if-eqz p5, :cond_7

    .line 815
    iget-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->ab:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    if-eqz p5, :cond_7

    invoke-interface {p5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;->a()Lkotlin/jvm/functions/Function3;

    move-result-object p5

    if-eqz p5, :cond_7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p5, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    .line 817
    :cond_7
    iget-boolean p1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;IJZ)Z
    .locals 0

    .line 96
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/view/View;IJZ)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;IJZILjava/lang/Object;)Z
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 787
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/view/View;IJZ)Z

    move-result p0

    return p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invokeItemClick"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 1

    .line 96
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p0, :cond_0

    const-string v0, "_recyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 483
    check-cast p2, Landroid/os/Bundle;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d(ILandroid/os/Bundle;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: restartListLoader"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->I:Z

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->u:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->q:Z

    return-void
.end method

.method private final d()Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->t:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    return-object v0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->x:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->y:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->ab:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    return-object p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    return-object p0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->p()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d()Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->F:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    return-object p0
.end method

.method public static final synthetic k(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->r:Z

    return p0
.end method

.method public static final synthetic l(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Landroid/support/v4/content/Loader;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->aa:Landroid/support/v4/content/Loader;

    return-object p0
.end method

.method public static final synthetic m(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/HashSet;
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->n()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method private final n()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->z:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method public static final synthetic n(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->I:Z

    return p0
.end method

.method private final o()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->A:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method public static final synthetic o(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->q:Z

    return p0
.end method

.method private final p()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->B:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->r()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->J:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;

    return-object p0
.end method

.method private final q()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->C:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic r(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->T:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    return-object p0
.end method

.method private final r()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final s()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->H:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;

    return-object v0
.end method

.method public static final synthetic s(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object p0
.end method

.method public static final synthetic t(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Landroid/view/View;
    .locals 1

    .line 96
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d:Landroid/view/View;

    if-nez p0, :cond_0

    const-string v0, "progressContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final t()Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->Q:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    return-object v0
.end method

.method public static final synthetic u(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->s()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic v(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->q()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic w(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object p0
.end method

.method public static final synthetic x(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->Y:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final x()V
    .locals 8

    .line 675
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->O:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->O:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;->a()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 679
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 680
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->i:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e:Landroid/view/ViewGroup;

    if-nez v2, :cond_4

    const-string v3, "listContainer"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 682
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->no_item_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->j:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 683
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no item view must contains R.id.no_item_text"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_6
    const/4 v0, 0x0

    .line 677
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->k:Landroid/view/View;

    .line 689
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 690
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingBottom()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 691
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_7

    const-string v2, "listContainer"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 692
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/view/View;)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected abstract A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->u:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    return-object v0
.end method

.method public final D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final E()Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->U:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    if-nez v0, :cond_1

    .line 192
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->U:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->U:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->U:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    return-object v0
.end method

.method public final F()Z
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final G()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final H()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V

    return-void
.end method

.method protected final I()V
    .locals 2

    .line 766
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->c()V

    return-void
.end method

.method public J()V
    .locals 2

    .line 1007
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1008
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_1

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e()Landroid/support/v7/view/ActionMode;

    :cond_2
    return-void
.end method

.method public K()V
    .locals 4

    .line 1013
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    const-string v1, "UiList"

    .line 1014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " finishActionMode() actionMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 1015
    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    :cond_1
    return-void
.end method

.method protected final L()V
    .locals 3

    .line 1023
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->V:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v1, :cond_0

    const-string v2, "_recyclerView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/support/v7/view/ActionMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a(Landroid/support/v7/view/ActionMode;)V

    :cond_1
    return-void
.end method

.method protected final M()Z
    .locals 1

    .line 1483
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a()I
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->n:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a()I

    move-result v0

    return v0
.end method

.method protected final a(ILandroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 4

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p2

    .line 578
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 580
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 581
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->Companion:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$Companion;

    invoke-virtual {v2, p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$Companion;->a(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    array-length p1, p2

    const/4 p2, 0x1

    :goto_0
    if-ge p2, p1, :cond_0

    const/4 p3, -0x1

    .line 584
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 586
    :cond_0
    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 587
    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public a(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v7.app.AppCompatActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(IIZ)V
    .locals 2

    .line 1357
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(IIZ)V

    return-void
.end method

.method public a(ILcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1347
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->U:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->a(ILcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->n:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V

    return-void
.end method

.method protected final a(J)V
    .locals 0

    .line 509
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->P:J

    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 10
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

    .line 531
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->n()Ljava/util/HashSet;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 534
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p1, :cond_2

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewCount()I

    move-result p1

    .line 535
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v0, :cond_3

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getFooterViewCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 536
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    const-string v3, "UiList"

    .line 540
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " headerCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", footerCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", dataCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 537
    invoke-static {v5, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    if-gtz p1, :cond_5

    if-lez v0, :cond_b

    :cond_5
    if-eqz p2, :cond_b

    .line 543
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v3, v0

    .line 544
    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_7

    .line 546
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v6, :cond_6

    const-string v7, "adapter"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v6, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewType$musicLibrary_release(I)I

    move-result v6

    .line 547
    invoke-virtual {p0, v6, p2, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(ILandroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v7

    aput-object v7, v3, v4

    const-string v7, "UiList"

    .line 548
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " viewType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is added as header"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 550
    :cond_7
    aput-object p2, v3, p1

    :goto_2
    if-ge v1, v0, :cond_9

    .line 552
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v4, :cond_8

    const-string v6, "adapter"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v4, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getFooterViewType$musicLibrary_release(I)I

    move-result v4

    add-int v6, v1, p1

    add-int/2addr v6, v5

    add-int v7, p1, v2

    add-int/2addr v7, v1

    .line 554
    invoke-virtual {p0, v4, p2, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(ILandroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v7

    aput-object v7, v3, v6

    const-string v6, "UiList"

    .line 555
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " viewType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is added as footer"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 557
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p1, :cond_a

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_a
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    invoke-direct {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_3

    .line 559
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p1, :cond_c

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 562
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->G:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    if-eqz p1, :cond_d

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a(Landroid/database/Cursor;)V

    .line 563
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->G()Z

    move-result p1

    if-eqz p1, :cond_f

    if-gtz v2, :cond_e

    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->c:Z

    if-nez p1, :cond_f

    .line 564
    :cond_e
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->c(Z)V

    :cond_f
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected final a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V
    .locals 3

    const-string v0, "deleteable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UiList"

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setDeleteable() deleteable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->K:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    return-void
.end method

.method protected final a(Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;)V
    .locals 1

    const-string v0, "favoriteable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 983
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->N:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    return-void
.end method

.method protected final a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V
    .locals 1

    const-string v0, "checkableList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->n:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1305
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->s()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;->a(Ljava/lang/Object;)V

    .line 1306
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->G:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;->a(Z)V

    :cond_0
    return-void
.end method

.method protected final a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V
    .locals 3

    const-string v0, "indexable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1290
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const-string v2, "listContainer"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$setIndexViewable$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$setIndexViewable$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/ViewGroup;Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->G:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    const/4 p1, 0x1

    .line 1293
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e(Z)V

    return-void
.end method

.method protected final a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 775
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p1, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemClickListenerWrapper;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemClickListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    return-void
.end method

.method protected final a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->x:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;

    .line 780
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p1, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnItemLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;)V

    return-void
.end method

.method protected final a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V
    .locals 1

    const-string v0, "playable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 956
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->L:Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->o:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;)V
    .locals 1

    const-string v0, "buttonBackgroundShowable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1324
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->S:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;->showButtonBackground(Z)V

    .line 1325
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V
    .locals 1

    const-string v0, "emptyViewCreator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 670
    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->k:Landroid/view/View;

    .line 671
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->O:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;)V
    .locals 1

    const-string v0, "analytics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1385
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->ab:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    .line 1386
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->ab:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;->b()Lkotlin/jvm/functions/Function3;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1387
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p1, :cond_1

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnThumbnailClickListenerWrapper;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnThumbnailClickListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnThumbnailClickListener$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w_()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;->a(I)V

    .line 1044
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->r()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;ILjava/lang/Object;)V

    return-void
.end method

.method protected final a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;)V
    .locals 4

    const-string v0, "reorderable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1333
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v1, :cond_0

    const-string v2, "_recyclerView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v2, :cond_1

    const-string v3, "adapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-direct {v0, v1, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->o:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    return-void
.end method

.method protected final a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V
    .locals 1

    const-string v0, "shareable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 975
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->M:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V
    .locals 1

    const-string v0, "enabler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1319
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->F()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;->setViewEnabled(Z)V

    .line 1320
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->p()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V
    .locals 1

    const-string v0, "selectAll"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->F:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1029
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->F:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    if-eqz v0, :cond_2

    .line 1031
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-eqz p1, :cond_2

    .line 1032
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p1, :cond_1

    const-string v0, "_recyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/support/v7/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1033
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->V:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;

    if-eqz v0, :cond_2

    .line 1034
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->b(Landroid/support/v7/view/ActionMode;)V

    .line 1035
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a(Landroid/support/v7/view/ActionMode;)V

    :cond_2
    return-void
.end method

.method protected final a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V
    .locals 1

    const-string v0, "actionModeMenu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1019
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    return-void
.end method

.method protected final a(ZI)V
    .locals 4

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 591
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a:Z

    and-int/lit8 v0, p2, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 592
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b:Z

    const/4 v0, 0x4

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_2

    const/4 v1, 0x1

    .line 594
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->c:Z

    const-string p2, "UiList"

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " setListShownFlag() shownWithAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shownWithLoadingProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shownOnlyHavingValidDataOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->c(Z)V

    return-void
.end method

.method protected final a(Landroid/database/Cursor;)Z
    .locals 2

    .line 1392
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 1393
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 1394
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1395
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$finishIfNoItems$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$finishIfNoItems$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/support/v4/app/FragmentManager;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(I)[J
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->n:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.end method

.method protected final b(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 664
    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->k:Landroid/view/View;

    .line 665
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->i:I

    .line 666
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->j:I

    return-void
.end method

.method protected final b(IZ)V
    .locals 3

    .line 877
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setChoiceMode(I)V

    .line 878
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v0, :cond_1

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setChoiceMode(IZ)V

    .line 880
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    if-ne p1, v0, :cond_7

    if-nez p2, :cond_3

    .line 881
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p2, :cond_2

    const-string v0, "_recyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->u:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    .line 883
    :cond_3
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->V:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;

    .line 884
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p1, :cond_4

    const-string p2, "_recyclerView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->V:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;

    if-nez p2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;)V

    .line 885
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p1, :cond_6

    const-string p2, "adapter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_6
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnItemLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;)V

    goto/16 :goto_0

    .line 887
    :cond_7
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;->a()I

    move-result v0

    if-ne p1, v0, :cond_d

    if-nez p2, :cond_9

    .line 888
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p2, :cond_8

    const-string v0, "_recyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_8
    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->u:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    .line 890
    :cond_9
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->V:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;

    .line 891
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p1, :cond_a

    const-string p2, "_recyclerView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_a
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->V:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;

    if-nez p2, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_b
    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;)V

    .line 892
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p1, :cond_c

    const-string p2, "adapter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_c
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemClickListenerWrapper;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemClickListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    goto/16 :goto_0

    .line 894
    :cond_d
    sget p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d:I

    if-ne p1, p2, :cond_14

    .line 895
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->F:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    if-eqz p1, :cond_10

    .line 896
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object p1

    .line 897
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 898
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    .line 899
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 900
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 901
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 904
    :cond_e
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 905
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 906
    invoke-virtual {p2}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 909
    :cond_f
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->c:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$setChoiceMode$$inlined$let$lambda$1;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$setChoiceMode$$inlined$let$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->T:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 915
    :cond_10
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p1, :cond_11

    const-string p2, "adapter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_11
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnItemLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;)V

    .line 916
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p1, :cond_12

    const-string p2, "adapter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_12
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemClickListenerWrapper;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemClickListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 917
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p1, :cond_13

    const-string p2, "_recyclerView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_13
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$setChoiceMode$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$setChoiceMode$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V

    goto :goto_0

    .line 929
    :cond_14
    sget p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->c:I

    if-ne p1, p2, :cond_17

    .line 930
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p1, :cond_15

    const-string p2, "adapter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_15
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemClickListenerWrapper;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemClickListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 931
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p1, :cond_16

    const-string p2, "_recyclerView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_16
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$setChoiceMode$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$setChoiceMode$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V

    :cond_17
    :goto_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1310
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->s()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1365
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->Z:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    return-void
.end method

.method protected final b(Z)V
    .locals 3

    .line 605
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->m:Z

    .line 606
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "progressContainer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 607
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    const-string v1, "listContainer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_4

    .line 609
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d:Landroid/view/View;

    if-nez p1, :cond_2

    const-string v2, "progressContainer"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e:Landroid/view/ViewGroup;

    if-nez p1, :cond_3

    const-string v1, "listContainer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 612
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d:Landroid/view/View;

    if-nez p1, :cond_5

    const-string v2, "progressContainer"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 613
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e:Landroid/view/ViewGroup;

    if-nez p1, :cond_6

    const-string v0, "listContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected b_(I)V
    .locals 1

    const/4 v0, 0x0

    .line 873
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(IZ)V

    return-void
.end method

.method protected c(ILandroid/os/Bundle;)V
    .locals 2

    .line 459
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->n()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->v:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    check-cast v1, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object p1

    .line 462
    sget-boolean p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->ac:Z

    if-eqz p2, :cond_1

    const-string p2, "UiList"

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " initListLoader() loader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", l.isReset()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->isReset()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", loaderManager="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(IZ)V
    .locals 6

    if-ltz p1, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;IZZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final c(Z)V
    .locals 6

    .line 619
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->ac:Z

    if-eqz v0, :cond_0

    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setListShown() shown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 623
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->m:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 625
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 626
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->m:Z

    const/4 v1, 0x0

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    const/16 v4, 0x8

    if-eqz p1, :cond_a

    .line 629
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a:Z

    if-eqz p1, :cond_5

    .line 630
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d:Landroid/view/View;

    if-nez p1, :cond_3

    const-string v5, "progressContainer"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 631
    :cond_3
    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 630
    invoke-virtual {p1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 633
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e:Landroid/view/ViewGroup;

    if-nez p1, :cond_4

    const-string v3, "listContainer"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 634
    :cond_4
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 633
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 637
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d:Landroid/view/View;

    if-nez p1, :cond_6

    const-string v0, "progressContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 638
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e:Landroid/view/ViewGroup;

    if-nez p1, :cond_7

    const-string v0, "listContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 640
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d:Landroid/view/View;

    if-nez p1, :cond_8

    const-string v0, "progressContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 641
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e:Landroid/view/ViewGroup;

    if-nez p1, :cond_9

    const-string v0, "listContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 643
    :cond_a
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a:Z

    if-eqz p1, :cond_d

    .line 644
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d:Landroid/view/View;

    if-nez p1, :cond_b

    const-string v5, "progressContainer"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 645
    :cond_b
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 644
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 647
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e:Landroid/view/ViewGroup;

    if-nez p1, :cond_c

    const-string v2, "listContainer"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 648
    :cond_c
    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 647
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 651
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d:Landroid/view/View;

    if-nez p1, :cond_e

    const-string v0, "progressContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 652
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e:Landroid/view/ViewGroup;

    if-nez p1, :cond_f

    const-string v0, "listContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 654
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d:Landroid/view/View;

    if-nez p1, :cond_10

    const-string v0, "progressContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e:Landroid/view/ViewGroup;

    if-nez p1, :cond_11

    const-string v0, "listContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 658
    :goto_2
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b:Z

    if-nez p1, :cond_13

    .line 659
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d:Landroid/view/View;

    if-nez p1, :cond_12

    const-string v0, "progressContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void

    .line 621
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t be used with a custom content view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method protected d(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected final d(ILandroid/os/Bundle;)V
    .locals 2

    .line 484
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->v:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    check-cast v1, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method

.method protected final d(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 698
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->x()V

    .line 699
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->k:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v1, :cond_0

    const-string v2, "_recyclerView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 701
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 703
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->K()V

    goto :goto_0

    .line 705
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->k:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 706
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v1, :cond_3

    const-string v2, "_recyclerView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    const/16 v0, 0x8

    .line 707
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public deleteItems()V
    .locals 3

    const-string v0, "UiList"

    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " deleteItems() deleteable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->K:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", loader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->aa:Landroid/support/v4/content/Loader;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v4/content/Loader;->isStarted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->aa:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->K:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;->deleteItems()V

    :cond_2
    return-void
.end method

.method public final e(Z)V
    .locals 3

    .line 1297
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->G:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    if-eqz v0, :cond_1

    .line 1298
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollEnabled(Z)V

    .line 1299
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->G:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->b(Z)V

    :cond_1
    const-string v0, "UiList"

    .line 1301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIndexViewEnabled enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", indexViewManager="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->G:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final f(I)V
    .locals 4

    .line 471
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object p1

    .line 474
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->ac:Z

    if-eqz v0, :cond_1

    const-string v0, "UiList"

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " initExtraLoader() loader="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", l.isReset()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->isReset()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", loaderManager="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 475
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected final f(Z)V
    .locals 2

    .line 1337
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setReorderEnabled(Z)V

    return-void
.end method

.method protected final g(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public g(Z)V
    .locals 4

    .line 1361
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v2, :cond_1

    const-string v3, "adapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(IIZ)V

    return-void
.end method

.method public getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getScreenId()Ljava/lang/String;
    .locals 1

    .line 1369
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->Z:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->Z:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->getScreenId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1370
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final h(I)Landroid/view/View;
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    const-string v0, "UiList"

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setListSpaceTop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 718
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$layout;->mu_list_spacing_top:I

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v3, :cond_0

    const-string v4, "_recyclerView"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v2, "listSpaceTop"

    .line 720
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 721
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v3, :cond_1

    const-string v4, "_recyclerView"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    if-nez v0, :cond_2

    .line 722
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 723
    instance-of v0, v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    if-eqz v0, :cond_3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_3

    .line 724
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 726
    :cond_3
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 728
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p1, :cond_4

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    const/16 v0, -0x7d1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->addHeaderView(ILandroid/view/View;)V

    return-object v1
.end method

.method public final i(I)V
    .locals 8
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 736
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 737
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 738
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 739
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setClipToPadding(Z)V

    .line 740
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 741
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->c(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->b(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public l_()V
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->L:Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/Playable;->l_()V

    :cond_0
    return-void
.end method

.method public m_()V
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->M:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;->m_()V

    :cond_0
    return-void
.end method

.method public n_()Ljava/lang/Boolean;
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->N:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;->n_()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public o_()V
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->N:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;->o_()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 313
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "UiList"

    .line 314
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->baseTag:Ljava/lang/String;

    const/4 p1, 0x1

    .line 315
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->lifeCycleLogEnabled:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 319
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 320
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setHasOptionsMenu(Z)V

    .line 322
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->E:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    if-eqz p1, :cond_1

    const-string v0, "key_is_shown_action_mode_menu"

    const/4 v1, 0x0

    .line 325
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->q:Z

    const-string v0, "key_restore_action_mode"

    .line 326
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->r:Z

    const-string v0, "key_restore_reorder_enabled"

    .line 327
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->s:Z

    const-string v0, "key_menu_visible"

    .line 328
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 329
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setMenuVisibility(Z)V

    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_5

    .line 439
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_1

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v0

    .line 440
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;

    .line 441
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v2, :cond_2

    const-string v3, "_recyclerView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    sget v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->c:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setChoiceMode(I)V

    .line 442
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v2, :cond_3

    const-string v3, "_recyclerView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->c(IZ)V

    .line 443
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onCreateContextMenu$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onCreateContextMenu$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;I)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;->addContextMenuListener(Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;)V

    .line 449
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 440
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.ContextMenuObservable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 12
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

    .line 513
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object p2

    .line 514
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->ac:Z

    if-eqz v0, :cond_2

    const-string v0, "UiList"

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onCreateLoader() id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uri="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", projection="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", selectionArgs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", throttle="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->P:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 514
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_2
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    .line 519
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "activity!!.applicationContext"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    iget-object v3, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 521
    iget-object v4, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 522
    iget-object v5, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 523
    iget-object v6, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 524
    iget-object v7, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p1

    .line 518
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->P:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->setUpdateThrottle(J)V

    .line 525
    check-cast p1, Landroid/support/v4/content/Loader;

    return-object p1
.end method

.method protected onCreateView()Ljava/lang/Integer;
    .locals 1

    .line 335
    sget v0, Lcom/samsung/android/app/musiclibrary/R$layout;->mu_recycler_view_list:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 433
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroy()V

    .line 434
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setDataValid$musicLibrary_release(Z)V

    :cond_1
    return-void
.end method

.method protected onDestroyView(Z)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 426
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->U:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    .line 427
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->G:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    .line 429
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroyView(Z)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "loader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p1, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 414
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->t()Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->X:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->removeOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_1

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->stopScroll()V

    .line 416
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 404
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onResume()V

    .line 407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 408
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setMenuVisibility(Z)V

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->t()Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->X:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onKeyListener$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 294
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->g(Landroid/app/Activity;)Landroid/widget/ActionMenuView;

    move-result-object v0

    const-string v1, "key_is_shown_action_mode_menu"

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 296
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_restore_action_mode"

    const/4 v1, 0x1

    .line 300
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_restore_reorder_enabled"

    .line 301
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v1, :cond_2

    const-string v2, "adapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isReorderEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_3

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 304
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz v1, :cond_4

    const-string v1, "key_delete_requested"

    .line 305
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->b()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    const-string v0, "key_menu_visible"

    .line 308
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->R:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 397
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 398
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->E:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->W:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    .line 398
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->a(Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->E:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->a(Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;)V

    .line 421
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStop()V

    return-void
.end method

.method protected onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 343
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Z)V

    .line 344
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(ZI)V

    :cond_0
    return-void

    .line 349
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->p()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 350
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->q()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 351
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->r()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 353
    sget p3, Lcom/samsung/android/app/musiclibrary/R$id;->progressContainer:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v2, "view.findViewById(R.id.progressContainer)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d:Landroid/view/View;

    .line 354
    sget p3, Lcom/samsung/android/app/musiclibrary/R$id;->listContainer:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v2, "view.findViewById(R.id.listContainer)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e:Landroid/view/ViewGroup;

    .line 355
    sget p3, Lcom/samsung/android/app/musiclibrary/R$id;->recycler_view:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "view.findViewById(R.id.recycler_view)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 356
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p3, :cond_2

    const-string v2, "_recyclerView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->n:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 358
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 359
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p1, :cond_3

    const-string p3, "_recyclerView"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p3, :cond_4

    const-string v2, "adapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    check-cast p3, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 361
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p1, :cond_5

    const-string p3, "_recyclerView"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_5
    move-object p3, p0

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/SupportActionModeInvoker;

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setSupportActionModeInvoker$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/ui/list/SupportActionModeInvoker;)V

    .line 362
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p1, :cond_6

    const-string p3, "_recyclerView"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->u()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 363
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p1, :cond_7

    const-string p3, "_recyclerView"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setGoToTopEnabled(Z)V

    .line 364
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p1, :cond_8

    const-string p3, "_recyclerView"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollEnabled(Z)V

    .line 365
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p1, :cond_9

    const-string p3, "_recyclerView"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    const/16 p3, 0x14

    invoke-virtual {p1, v0, p3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 369
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p1, :cond_a

    const-string p3, "_recyclerView"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_a
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-static {p1, v1, v1, p3, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->a(Landroid/support/v7/widget/RecyclerView;ZZILjava/lang/Object;)V

    .line 371
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p1, :cond_b

    const-string p3, "adapter"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_b
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    .line 372
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p1, :cond_c

    const-string p3, "adapter"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_c
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;)V

    .line 373
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->s:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f(Z)V

    .line 374
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->s:Z

    .line 376
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 377
    move-object p3, p1

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 376
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->y:Lcom/samsung/android/app/musiclibrary/ui/list/MultiSelectionController;

    .line 380
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p3, :cond_d

    const-string v0, "_recyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_d
    invoke-direct {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 381
    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onViewCreated$$inlined$apply$lambda$1;

    invoke-direct {p3, p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onViewCreated$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    if-eqz p2, :cond_e

    const-string p3, "key_delete_requested"

    .line 389
    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 391
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->c()V

    .line 393
    :cond_e
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez p2, :cond_f

    const-string p3, "_recyclerView"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_f
    check-cast p1, Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public p_()V
    .locals 2

    .line 1374
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/RecyclerViewExtensionKt;->c(Landroid/support/v7/widget/RecyclerView;)V

    :cond_1
    return-void
.end method

.method public s_()V
    .locals 5

    .line 492
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UiList"

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " restartListLoader() failed | !isAdded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 496
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->n()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1487
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 497
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->v:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    check-cast v4, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v1, v2, v4}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 500
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->o()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1489
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 501
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v1, v2, v4}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_1

    .line 503
    :cond_2
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->ac:Z

    if-eqz v0, :cond_3

    const-string v0, "UiList"

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " restartListLoader() is called before mListLoaderId is initiated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 3

    const-string v0, "UiList"

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setMenuVisibility() menuVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->R:Z

    .line 288
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->setMenuVisibility(Z)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 281
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->setUserVisibleHint(Z)V

    .line 282
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "_recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setUserVisibleHint(Z)V

    :cond_1
    return-void
.end method

.method protected abstract u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
.end method

.method public w_()I
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->n:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->w_()I

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->N:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;->z()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
