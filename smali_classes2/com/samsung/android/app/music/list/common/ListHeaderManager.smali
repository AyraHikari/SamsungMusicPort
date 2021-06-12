.class public final Lcom/samsung/android/app/music/list/common/ListHeaderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;,
        Lcom/samsung/android/app/music/list/common/ListHeaderManager$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/list/common/ListHeaderManager$Companion;


# instance fields
.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

.field private d:I

.field private final e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private final i:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

.field private final j:Lkotlin/Lazy;

.field private k:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "analytics"

    const-string v4, "getAnalytics()Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b:Lcom/samsung/android/app/music/list/common/ListHeaderManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)V
    .locals 14

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->j()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v2

    .line 200
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a()I

    move-result v3

    .line 201
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->b()Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    move-result-object v5

    .line 202
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->c()Ljava/lang/Integer;

    move-result-object v6

    .line 203
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->d()Ljava/lang/Integer;

    move-result-object v7

    .line 204
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->e()Ljava/lang/Integer;

    move-result-object v8

    .line 205
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->f()Z

    move-result v9

    .line 206
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->g()Z

    move-result v10

    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->h()Z

    move-result v11

    const/4 v4, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v1, p0

    .line 198
    invoke-direct/range {v1 .. v13}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZZ)V
    .locals 15
    .param p6    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;II",
            "Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "ZZZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    const-string v6, "fragment"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v1, -0x1

    .line 44
    iput v1, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->d:I

    .line 46
    iget-object v1, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 47
    iget-object v6, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    const/4 v7, 0x0

    move/from16 v8, p2

    invoke-virtual {v1, v8, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v6, "LayoutInflater.from(frag\u2026ment.recyclerView, false)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->e:Landroid/view/View;

    .line 55
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/samsung/android/app/music/list/common/ListHeaderManager$analytics$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$analytics$2;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v6}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->j:Lkotlin/Lazy;

    if-eqz p5, :cond_1

    .line 64
    move-object/from16 v1, p5

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v3, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->e:Landroid/view/View;

    invoke-static {v3, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->b(Landroid/view/View;I)V

    :cond_1
    const/4 v1, 0x0

    if-nez p6, :cond_2

    if-eqz p7, :cond_5

    :cond_2
    if-eqz p6, :cond_3

    .line 67
    move-object/from16 v3, p6

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 68
    iget-object v3, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v10, v3

    goto :goto_0

    :cond_3
    move-object v10, v1

    :goto_0
    if-eqz p7, :cond_4

    .line 70
    move-object/from16 v3, p7

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 71
    iget-object v3, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    :cond_4
    move-object v12, v1

    .line 73
    :goto_1
    iget-object v8, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->e:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->b(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    :cond_5
    if-eqz v2, :cond_6

    .line 78
    iget-object v1, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v3, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->e:Landroid/view/View;

    const v4, 0x7f130068

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 79
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const-string v4, "view.findViewById<View>(\u2026VISIBLE\n                }"

    .line 78
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v4, Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    move/from16 v5, p3

    invoke-direct {v4, v1, v3, v2, v5}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;I)V

    move-object v1, v4

    .line 76
    :cond_6
    iput-object v1, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->i:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    if-eqz p10, :cond_7

    .line 86
    iget-object v1, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->e:Landroid/view/View;

    const v2, 0x7f130304

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById(R.id.create_playlist_button)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->c(Landroid/view/View;)V

    :cond_7
    if-eqz p8, :cond_8

    .line 87
    iget-object v1, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->e:Landroid/view/View;

    const v2, 0x7f130301

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById(R.id.icon_shuffle)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a(Landroid/view/View;)V

    :cond_8
    if-eqz p9, :cond_9

    .line 88
    iget-object v1, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->e:Landroid/view/View;

    const v2, 0x7f13044f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById(R.id.icon_play_all)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b(Landroid/view/View;)V

    .line 90
    :cond_9
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$3;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    iput-object v1, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->c:Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    .line 92
    iget-object v1, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v2, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->c:Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    .line 93
    iget-object v1, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    new-instance v2, Lcom/samsung/android/app/music/list/common/ListHeaderManager$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$4;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;)V

    .line 106
    iget-object v1, v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    new-instance v2, Lcom/samsung/android/app/music/list/common/ListHeaderManager$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$5;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const v1, 0x7f04017b

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    const v2, 0x7f040252

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 33
    move-object v3, v4

    check-cast v3, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    .line 34
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    .line 35
    move-object v6, v4

    check-cast v6, Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    .line 36
    check-cast v4, Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object/from16 v4, p7

    :goto_5
    and-int/lit16 v7, v0, 0x80

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    goto :goto_6

    :cond_6
    move/from16 v7, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move/from16 v9, p9

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v8, p10

    :goto_8
    move-object p2, p0

    move-object p3, p1

    move p4, v1

    move p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v4

    move/from16 p10, v7

    move/from16 p11, v9

    move/from16 p12, v8

    .line 39
    invoke-direct/range {p2 .. p12}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZZ)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->k:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method private final a(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 149
    new-instance v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$initShuffleAll$$inlined$apply$lambda$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$initShuffleAll$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->f:Landroid/view/View;

    .line 156
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->f:Landroid/view/View;

    const v1, 0x7f0b0385

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 157
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->f:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/common/ListHeaderManager;I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->d:I

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/common/ListHeaderManager;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b(Z)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->e()Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;

    move-result-object p0

    return-object p0
.end method

.method private final b(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 163
    new-instance v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$initPlayAll$$inlined$apply$lambda$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$initPlayAll$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->g:Landroid/view/View;

    .line 169
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->g:Landroid/view/View;

    const v1, 0x7f0b02e2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 170
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->g:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private final b(Z)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 133
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/view/View;Z)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 137
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/view/View;Z)V

    .line 138
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->h:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 141
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/view/View;Z)V

    .line 142
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->l:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method private final c(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f130304

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$initCreatePlaylist$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$initCreatePlaylist$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    check-cast v0, Landroid/view/View;

    const v1, 0x7f0b03e3

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->c(Landroid/view/View;I)V

    .line 174
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->h:Landroid/view/View;

    return-void
.end method

.method private final e()Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->j:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->e:Landroid/view/View;

    return-object v0
.end method

.method public final a(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->k:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->h:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->i:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final b(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->l:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final c()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w_()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->d:I

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b(Z)V

    return-void
.end method

.method public final d()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->m:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object v0
.end method
