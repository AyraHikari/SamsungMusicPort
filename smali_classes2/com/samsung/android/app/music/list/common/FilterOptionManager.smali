.class public final Lcom/samsung/android/app/music/list/common/FilterOptionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;,
        Lcom/samsung/android/app/music/list/common/FilterOptionManager$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Companion;

.field private static final j:Landroid/util/SparseIntArray;


# instance fields
.field private final c:Landroid/content/SharedPreferences;

.field private final d:Lcom/samsung/android/app/music/list/SpinnerHelper;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private final g:Lkotlin/Lazy;

.field private final h:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field

.field private final i:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "analytics"

    const-string v5, "getAnalytics()Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->a:[Lkotlin/reflect/KProperty;

    new-instance v1, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->b:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Companion;

    .line 130
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    .line 133
    sget-object v1, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    const v2, 0x7f0b039a

    .line 155
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 134
    sget-object v1, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    const v2, 0x7f0b039e

    .line 156
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f0b039d

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x7f0b039b

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0x7f0b039c

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 138
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x7f0b0397

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x7f0b0399

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 140
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const v2, 0x7f0b04fd

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 141
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0x7f0b04c3

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const v2, 0x7f0b0398

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 143
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const v2, 0x7f0b03a1

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 144
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const v2, 0x7f0b03a2

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 145
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const v2, 0x7f0b039f

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const v2, 0x7f0b00f7

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 147
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const v2, 0x7f0b03a3

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;",
            "Landroid/view/View;",
            "Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;I)V
    .locals 5
    .param p4    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;",
            "Landroid/view/View;",
            "Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;",
            "I)V"
        }
    .end annotation

    const-string v0, "recyclerViewFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "root"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->h:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->i:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->e:Ljava/util/ArrayList;

    .line 48
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p3, Lcom/samsung/android/app/music/list/common/FilterOptionManager$analytics$2;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/music/list/common/FilterOptionManager$analytics$2;-><init>(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->g:Lkotlin/Lazy;

    .line 51
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->h:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p3, "recyclerViewFragment.activity!!"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "context"

    .line 52
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->c:Landroid/content/SharedPreferences;

    .line 53
    new-instance p3, Lcom/samsung/android/app/music/list/SpinnerHelper;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->h:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p3, v0, p2, p4}, Lcom/samsung/android/app/music/list/SpinnerHelper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;I)V

    iput-object p3, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->d:Lcom/samsung/android/app/music/list/SpinnerHelper;

    .line 55
    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->i:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    iget-object p3, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {p2, p3}, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;->a(Landroid/content/SharedPreferences;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->f:I

    .line 57
    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->i:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;->a()[I

    move-result-object p2

    .line 58
    array-length p3, p2

    new-array p3, p3, [I

    .line 153
    array-length p4, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v1, p4, :cond_1

    aget v2, p2, v1

    add-int/lit8 v3, v0, 0x1

    .line 61
    sget-object v4, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    aput v4, p3, v0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->e:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_0

    .line 65
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->d:Lcom/samsung/android/app/music/list/SpinnerHelper;

    array-length p4, p3

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/list/SpinnerHelper;->a([I)V

    .line 66
    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->d:Lcom/samsung/android/app/music/list/SpinnerHelper;

    new-instance p3, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager$2;-><init>(Lcom/samsung/android/app/music/list/common/FilterOptionManager;Landroid/content/Context;)V

    check-cast p3, Lcom/samsung/android/app/music/list/SpinnerHelper$OnItemSelectedListener;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/list/SpinnerHelper;->a(Lcom/samsung/android/app/music/list/SpinnerHelper$OnItemSelectedListener;)V

    .line 103
    iget p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->f:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->b(I)V

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->d:Lcom/samsung/android/app/music/list/SpinnerHelper;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->e:Ljava/util/ArrayList;

    iget p3, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->f:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/SpinnerHelper;->a(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const p4, 0x7f04025c

    .line 24
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->h:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->f:I

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->f:I

    return p0
.end method

.method private final b()Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->g:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;

    return-object v0
.end method

.method private final b(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->h:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e(Z)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->h:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->e(Z)V

    :goto_0
    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->b(I)V

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Lcom/samsung/android/app/music/list/SpinnerHelper;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->d:Lcom/samsung/android/app/music/list/SpinnerHelper;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->i:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Landroid/content/SharedPreferences;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->c:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->b()Lcom/samsung/android/app/music/list/analytics/FilterOptionAnalytics;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->f:I

    return v0
.end method

.method public final a(I)V
    .locals 2

    .line 38
    iget v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->f:I

    if-ne v0, p1, :cond_0

    return-void

    .line 41
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->f:I

    .line 42
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->d:Lcom/samsung/android/app/music/list/SpinnerHelper;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/SpinnerHelper;->a(I)V

    return-void
.end method
