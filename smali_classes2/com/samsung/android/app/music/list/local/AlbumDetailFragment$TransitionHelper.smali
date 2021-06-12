.class final Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransitionHelper"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field final synthetic b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

.field private final c:Ljava/lang/String;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sharedElementTransition"

    const-string v4, "getSharedElementTransition()Landroid/transition/Transition;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "enabled"

    const-string v4, "getEnabled()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 313
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    .line 314
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "key_transition_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->c:Ljava/lang/String;

    .line 315
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$sharedElementTransition$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$sharedElementTransition$2;-><init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->d:Lkotlin/Lazy;

    .line 319
    sget-object v0, Lkotlin/properties/Delegates;->a:Lkotlin/properties/Delegates;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 483
    new-instance v1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$$special$$inlined$observable$1;

    invoke-direct {v1, v0, v0, p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;)V

    check-cast v1, Lkotlin/properties/ReadWriteProperty;

    .line 485
    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->e:Lkotlin/properties/ReadWriteProperty;

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->postponeEnterTransition()V

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->a()Landroid/transition/Transition;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    .line 330
    :cond_2
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/transition/Transition;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    return-object v0
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->e:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 3

    .line 345
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 471
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 472
    new-instance v2, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$startEnterTransition$$inlined$doOnPreDraw$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$startEnterTransition$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver;Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;)V

    check-cast v2, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "fragment"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f13013a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 335
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 337
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const p2, 0x7f130139

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x4

    .line 338
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->a()Landroid/transition/Transition;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$onFragmentActivityCreated$1$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper$onFragmentActivityCreated$1$1;-><init>(Landroid/view/View;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, v0}, Landroidx/transition/TransitionKt;->a(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    return-void
.end method
