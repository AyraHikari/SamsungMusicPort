.class final Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IndexViewHeightManager"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

.field private final c:I

.field private final d:I

.field private final e:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "enabled"

    const-string v4, "getEnabled()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_index_view_margin_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->c:I

    .line 215
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->sesl_indexbar_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 216
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->sesl_indexbar_content_padding:I

    .line 215
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->d:I

    .line 219
    sget-object p1, Lkotlin/properties/Delegates;->a:Lkotlin/properties/Delegates;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 358
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager$$special$$inlined$observable$1;

    invoke-direct {v0, p1, p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;)V

    check-cast v0, Lkotlin/properties/ReadWriteProperty;

    .line 360
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->e:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method private final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->e:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final b()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->e:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final c()I
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewCount()I

    move-result v1

    .line 237
    move-object v2, v0

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/RecyclerViewExtensionKt;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    if-lt v2, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 239
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewCount()I

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    .line 248
    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/RecyclerViewExtensionKt;->b(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Landroid/support/v7/widget/SeslIndexScrollView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslIndexScrollView;->setVisibility(I)V

    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Landroid/support/v7/widget/SeslIndexScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Landroid/support/v7/widget/SeslIndexScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslIndexScrollView;->setVisibility(I)V

    .line 257
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->c()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 259
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->d:I

    sub-int/2addr v0, v2

    .line 261
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Landroid/support/v7/widget/SeslIndexScrollView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/SeslIndexScrollView;->setIndexScrollMargin(II)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->c(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;->a()V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Landroid/support/v7/widget/SeslIndexScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->invalidate()V

    :cond_3
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->c:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->a(Z)V

    goto :goto_0

    :cond_0
    :pswitch_1
    const/4 p1, 0x1

    .line 228
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->a(Z)V

    .line 230
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->c()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    int-to-float v0, v2

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
