.class final Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IndexViewOffsetManager"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

.field private final c:Lkotlin/properties/ReadWriteProperty;

.field private final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "indexViewOffset"

    const-string v4, "getIndexViewOffset()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "indexMarginEnd"

    const-string v4, "getIndexMarginEnd()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    .line 210
    sget-object v0, Lkotlin/properties/Delegates;->a:Lkotlin/properties/Delegates;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 250
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager$$special$$inlined$observable$1;

    invoke-direct {v1, v0, v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;)V

    check-cast v1, Lkotlin/properties/ReadWriteProperty;

    .line 252
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->c:Lkotlin/properties/ReadWriteProperty;

    .line 214
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager$indexMarginEnd$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager$indexMarginEnd$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->d:Lkotlin/Lazy;

    .line 219
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method private final b()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->c:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->c:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->b()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->a(I)V

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;)V

    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;)V

    return-void
.end method
