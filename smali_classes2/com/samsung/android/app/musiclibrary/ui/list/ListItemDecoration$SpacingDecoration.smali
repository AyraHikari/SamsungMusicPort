.class final Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpacingDecoration"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

.field private final c:Lkotlin/Lazy;

.field private d:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "additionalSpacingEndFromIndexBar"

    const-string v4, "getAdditionalSpacingEndFromIndexBar()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 74
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration$additionalSpacingEndFromIndexBar$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration$additionalSpacingEndFromIndexBar$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;->c:Lkotlin/Lazy;

    return-void
.end method

.method private final a()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    const-string p4, "outRect"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewCount()I

    move-result p3

    if-lt p1, p3, :cond_3

    .line 87
    sget p1, Lcom/samsung/android/app/musiclibrary/R$id;->guideline_end:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/Guideline;

    if-eqz p1, :cond_3

    .line 88
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;->d:Ljava/lang/Integer;

    if-nez p2, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/support/constraint/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget p2, p2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;->d:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.constraint.ConstraintLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->b(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->a()I

    move-result p2

    if-nez p2, :cond_2

    .line 94
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;->d:Ljava/lang/Integer;

    if-eqz p2, :cond_3

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/constraint/Guideline;->setGuidelineEnd(I)V

    goto :goto_1

    .line 96
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->b(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->a()I

    move-result p2

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$SpacingDecoration;->a()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/support/constraint/Guideline;->setGuidelineEnd(I)V

    :cond_3
    :goto_1
    return-void
.end method
