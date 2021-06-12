.class final Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckBoxOffsetManager"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

.field private final c:Lkotlin/properties/ReadWriteProperty;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager$animatorLister$1;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager$getOffsetListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "checkboxOffset"

    const-string v4, "getCheckboxOffset()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    .line 166
    sget-object v0, Lkotlin/properties/Delegates;->a:Lkotlin/properties/Delegates;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 250
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager$$special$$inlined$observable$1;

    invoke-direct {v1, v0, v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;)V

    check-cast v1, Lkotlin/properties/ReadWriteProperty;

    .line 252
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->c:Lkotlin/properties/ReadWriteProperty;

    .line 173
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager$animatorLister$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager$animatorLister$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager$animatorLister$1;

    .line 179
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager$getOffsetListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager$getOffsetListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager$getOffsetListener$1;

    .line 186
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->c()V

    return-void
.end method

.method private final b()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    return-object v0
.end method

.method private final c()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager$getOffsetListener$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->c:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->a:[Lkotlin/reflect/KProperty;

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

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->c:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->b()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager$animatorLister$1;

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->c()V

    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->b()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager$animatorLister$1;

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method
