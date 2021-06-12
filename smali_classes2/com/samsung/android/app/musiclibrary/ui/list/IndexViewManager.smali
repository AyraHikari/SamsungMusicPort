.class public final Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;,
        Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;,
        Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$MusicCursorIndexer;,
        Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$Companion;


# instance fields
.field private final c:Landroid/support/v7/widget/SeslIndexScrollView;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;

.field private final f:Lkotlin/properties/ReadWriteProperty;

.field private final g:Lkotlin/properties/ReadWriteProperty;

.field private final h:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onIndexBarEventListener$1;

.field private final i:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onScrollListener$1;

.field private final j:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$headerItemLayoutChangedListener$1;

.field private final k:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field

.field private final l:Landroid/view/ViewGroup;

.field private final m:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

.field private final n:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "visible"

    const-string v4, "getVisible()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "indexViewEnabled"

    const-string v4, "getIndexViewEnabled()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/ViewGroup;Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;",
            "Landroid/view/ViewGroup;",
            "Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "root"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexViewable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleChangedListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->k:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->l:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->n:Lkotlin/jvm/functions/Function1;

    .line 50
    new-instance p1, Landroid/support/v7/widget/SeslIndexScrollView;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->k:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/support/v7/widget/SeslIndexScrollView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->c:Landroid/support/v7/widget/SeslIndexScrollView;

    .line 51
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;

    .line 52
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->k:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;-><init>(Landroid/content/Context;)V

    .line 53
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->c:Landroid/support/v7/widget/SeslIndexScrollView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;->addView(Landroid/view/View;)V

    .line 54
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->k:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingBottom()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->e:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;

    .line 56
    sget-object p1, Lkotlin/properties/Delegates;->a:Lkotlin/properties/Delegates;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 358
    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$1;

    invoke-direct {p3, p2, p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)V

    check-cast p3, Lkotlin/properties/ReadWriteProperty;

    .line 360
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->f:Lkotlin/properties/ReadWriteProperty;

    .line 75
    sget-object p2, Lkotlin/properties/Delegates;->a:Lkotlin/properties/Delegates;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 361
    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$2;

    invoke-direct {p3, p2, p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)V

    check-cast p3, Lkotlin/properties/ReadWriteProperty;

    .line 363
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->g:Lkotlin/properties/ReadWriteProperty;

    .line 82
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onIndexBarEventListener$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onIndexBarEventListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->h:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onIndexBarEventListener$1;

    .line 98
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onScrollListener$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onScrollListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->i:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onScrollListener$1;

    .line 120
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$headerItemLayoutChangedListener$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$headerItemLayoutChangedListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->j:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$headerItemLayoutChangedListener$1;

    .line 144
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->k:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    .line 145
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 146
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setHorizontalScrollBarEnabled(Z)V

    .line 149
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->c:Landroid/support/v7/widget/SeslIndexScrollView;

    .line 150
    invoke-virtual {p2}, Landroid/support/v7/widget/SeslIndexScrollView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "context"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string p4, "res"

    .line 152
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    const-string v0, "res.configuration"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x1

    .line 153
    :cond_0
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslIndexScrollView;->setIndexBarGravity(I)V

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;->c()Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 156
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;->a()Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_1

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-static {p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManagerKt;->a(Landroid/content/res/Resources;I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/support/v7/widget/SeslIndexScrollView;->setIndexBarBackgroundColor(I)V

    .line 157
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;->b()Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_2

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-static {p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManagerKt;->a(Landroid/content/res/Resources;I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/support/v7/widget/SeslIndexScrollView;->setIndexBarTextColor(I)V

    .line 158
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;->c()Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    .line 159
    invoke-static {p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManagerKt;->a(Landroid/content/res/Resources;I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/support/v7/widget/SeslIndexScrollView;->setIndexBarPressedTextColor(I)V

    .line 161
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;->d()Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-static {p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManagerKt;->a(Landroid/content/res/Resources;I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/support/v7/widget/SeslIndexScrollView;->setEffectBackgroundColor(I)V

    .line 162
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;->e()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManagerKt;->a(Landroid/content/res/Resources;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslIndexScrollView;->setEffectTextColor(I)V

    .line 165
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->h:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onIndexBarEventListener$1;

    check-cast p1, Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslIndexScrollView;->setOnIndexBarEventListener(Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;)V

    .line 166
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$run$lambda$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$run$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)V

    check-cast p1, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslIndexScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->k:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Landroid/support/v7/widget/SeslIndexScrollView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->c:Landroid/support/v7/widget/SeslIndexScrollView;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->e:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Landroid/view/ViewGroup;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->l:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onScrollListener$1;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->i:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$onScrollListener$1;

    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$headerItemLayoutChangedListener$1;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->j:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$headerItemLayoutChangedListener$1;

    return-object p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->n:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 8

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 184
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 190
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 191
    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    const-string v2, "Locale.TAIWAN"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "defaultLocale"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Ui"

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", country="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 194
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v5, v0

    goto :goto_2

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->k:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$array;->index_string_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 198
    :goto_2
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$MusicCursorIndexer;

    if-nez p1, :cond_4

    .line 199
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 200
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v1, "indexCharArray"

    .line 201
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 203
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;->b()I

    move-result v7

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    .line 198
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$MusicCursorIndexer;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;Landroid/database/Cursor;I[Ljava/lang/String;II)V

    .line 205
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->c:Landroid/support/v7/widget/SeslIndexScrollView;

    check-cast v0, Landroid/support/v7/widget/SeslAbsIndexer;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslIndexScrollView;->setIndexer(Landroid/support/v7/widget/SeslAbsIndexer;)V

    .line 206
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->c:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslIndexScrollView;->invalidate()V

    .line 207
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->d:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->a()V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->f:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final a()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->f:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->g:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->g:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
