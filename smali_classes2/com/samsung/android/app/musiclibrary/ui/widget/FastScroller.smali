.class Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$MathUtils;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$IntProperty;
    }
.end annotation


# static fields
.field private static O:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static P:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static Q:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static R:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String; = "FastScroller"

.field private static final b:J


# instance fields
.field private final A:Landroid/widget/ImageView;

.field private final B:Landroid/widget/TextView;

.field private final C:Landroid/widget/TextView;

.field private D:I

.field private E:I

.field private F:I

.field private G:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

.field private H:Z

.field private I:F

.field private J:Z

.field private K:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;

.field private final L:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private final M:Ljava/lang/Runnable;

.field private final N:Landroid/animation/Animator$AnimatorListener;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:J

.field private h:Z

.field private i:Z

.field private final j:I

.field private k:F

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private final o:I

.field private p:F

.field private q:Landroid/animation/AnimatorSet;

.field private r:Landroid/animation/AnimatorSet;

.field private s:Z

.field private final t:Landroid/graphics/Rect;

.field private final u:Landroid/graphics/Rect;

.field private final v:Landroid/graphics/Rect;

.field private final w:Landroid/support/v7/widget/RecyclerView;

.field private final x:Landroid/widget/ImageView;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b:J

    .line 1121
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$4;

    const-string v1, "left"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->O:Landroid/util/Property;

    .line 1133
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$5;

    const-string v1, "top"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->P:Landroid/util/Property;

    .line 1145
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$6;

    const-string v1, "right"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->Q:Landroid/util/Property;

    .line 1157
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$7;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->R:Landroid/util/Property;

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 87
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c:I

    .line 90
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->d:I

    const-wide/16 v1, -0x1

    .line 97
    iput-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->g:J

    .line 113
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->m:I

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->t:Landroid/graphics/Rect;

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->u:Landroid/graphics/Rect;

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->v:Landroid/graphics/Rect;

    const/high16 v0, -0x40800000    # -1.0f

    .line 163
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->I:F

    .line 169
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->L:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 302
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->M:Ljava/lang/Runnable;

    .line 1086
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->N:Landroid/animation/Animator$AnimatorListener;

    .line 179
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->y:I

    .line 182
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->z:I

    .line 183
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->o:I

    .line 184
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 185
    sget v1, Lcom/samsung/android/app/musiclibrary/R$drawable;->fast_scroll_thumb:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 186
    sget v3, Lcom/samsung/android/app/musiclibrary/R$color;->mu_primary:I

    invoke-static {p1, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 187
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 189
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    .line 190
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 192
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 194
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->e:I

    .line 195
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->fast_scroll_thumb_margin_end:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->j:I

    .line 196
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->tw_fluid_scroller_additional_touch_area:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->k:F

    .line 198
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->fast_scroll_preview_min_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->E:I

    .line 199
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->fast_scroll_preview_min_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->F:I

    .line 200
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->fast_scroll_preview_margin_end:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->D:I

    .line 202
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    .line 203
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 204
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    sget v5, Lcom/samsung/android/app/musiclibrary/R$drawable;->fast_scroll_preview:I

    invoke-virtual {p1, v5, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 206
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    const/16 v3, 0xcc

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 208
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->B:Landroid/widget/TextView;

    .line 209
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->C:Landroid/widget/TextView;

    .line 211
    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->fast_scroll_preview_text_color:I

    .line 212
    invoke-static {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 213
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->fast_scroll_preview_text:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 215
    sget v2, Lcom/samsung/android/app/musiclibrary/R$dimen;->fast_scroll_padding:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 217
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->B:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 218
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->B:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 219
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->B:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 220
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->B:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 222
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->C:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 227
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->B:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->C:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 233
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->z:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->d(I)V

    .line 234
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getVerticalScrollbarPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(I)V

    return-void
.end method

.method private a(III)F
    .locals 1

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, p3, :cond_1

    return v0

    :cond_1
    int-to-float p1, p1

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;)I
    .locals 3

    .line 473
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 474
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 475
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    goto :goto_0

    .line 476
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_2

    .line 477
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p1

    new-array p1, p1, [I

    .line 478
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 479
    aget p1, p1, v2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, p1

    :cond_2
    :goto_0
    return v2
.end method

.method private static varargs a(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 442
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 445
    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_1

    .line 446
    aget-object v4, p2, v1

    new-array v5, v2, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-nez v3, :cond_0

    .line 448
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    goto :goto_1

    .line 450
    :cond_0
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static a(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    .line 1095
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private a(IF)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x1

    .line 284
    new-array v1, v0, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    .line 285
    new-array v0, v0, [I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(IF)I

    move-result p1

    aput p1, v0, v2

    .line 286
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method private a(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2

    .line 238
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 241
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 243
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 244
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 p1, 0x11

    .line 245
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x0

    .line 246
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 248
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutDirection()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutDirection(I)V

    return-object v1
.end method

.method private a(F)V
    .locals 4

    .line 669
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    .line 670
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 679
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    mul-float p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 682
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    .line 683
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    .line 684
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 685
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->t:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    sub-float/2addr p1, v2

    .line 686
    invoke-static {p1, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$MathUtils;->a(FFF)F

    move-result p1

    .line 688
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 689
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 690
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->v:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 549
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 550
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 551
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->i:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->j:I

    :goto_0
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 552
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->i:Z

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->j:I

    :cond_1
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 553
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->v:Landroid/graphics/Rect;

    .line 558
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 559
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 560
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 561
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 562
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->i:Z

    if-eqz v1, :cond_0

    .line 563
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->D:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 565
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->D:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 567
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 619
    :cond_0
    iget v1, p3, Landroid/graphics/Rect;->top:I

    :goto_0
    if-nez p3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 620
    :cond_1
    iget v2, p3, Landroid/graphics/Rect;->left:I

    :goto_1
    if-nez p3, :cond_2

    const/4 p3, 0x0

    goto :goto_2

    .line 621
    :cond_2
    iget p3, p3, Landroid/graphics/Rect;->right:I

    .line 623
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->t:Landroid/graphics/Rect;

    .line 624
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-nez p2, :cond_3

    goto :goto_3

    .line 628
    :cond_3
    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->i:Z

    if-eqz v5, :cond_4

    .line 629
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    goto :goto_3

    .line 631
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v4, v5

    :goto_3
    sub-int/2addr v4, v2

    sub-int/2addr v4, p3

    .line 634
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v5, -0x80000000

    .line 636
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 638
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 639
    invoke-virtual {p1, v5, v0}, Landroid/view/View;->measure(II)V

    .line 642
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 645
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->i:Z

    if-eqz v4, :cond_6

    if-nez p2, :cond_5

    .line 646
    iget p2, v3, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    :goto_4
    sub-int/2addr p2, p3

    sub-int p3, p2, v0

    goto :goto_6

    :cond_6
    if-nez p2, :cond_7

    .line 649
    iget p2, v3, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    :goto_5
    add-int p3, p2, v2

    add-int p2, p3, v0

    .line 654
    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v1

    .line 655
    invoke-virtual {p4, p3, v1, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->f()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c(I)V

    return-void
.end method

.method private a(FF)Z
    .locals 0

    .line 871
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c(F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->d(F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->s:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 10

    .line 1018
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->u:Landroid/graphics/Rect;

    .line 1019
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    .line 1023
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->s:Z

    if-eqz v2, :cond_0

    .line 1024
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->B:Landroid/widget/TextView;

    .line 1025
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->C:Landroid/widget/TextView;

    goto :goto_0

    .line 1027
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->C:Landroid/widget/TextView;

    .line 1028
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->B:Landroid/widget/TextView;

    .line 1032
    :goto_0
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1034
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1036
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->r:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    .line 1037
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1041
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v5

    const-wide/16 v6, 0x32

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v5

    const/4 v8, 0x0

    .line 1042
    invoke-static {v2, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 1043
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->N:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1046
    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 1047
    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->top:I

    .line 1048
    iget v7, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 1049
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 1050
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v7, 0x64

    .line 1051
    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1053
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->r:Landroid/animation/AnimatorSet;

    .line 1054
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 1055
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1060
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1064
    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_2

    int-to-float v0, v0

    int-to-float v6, v1

    div-float/2addr v0, v6

    .line 1066
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1067
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 1068
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1070
    :cond_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1074
    :goto_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-le v0, v1, :cond_3

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 1077
    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 1078
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1081
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1082
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private b(F)F
    .locals 3

    .line 694
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return v1

    :cond_0
    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 700
    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$MathUtils;->a(FFF)F

    move-result p1

    return p1
.end method

.method private b(IF)I
    .locals 2

    .line 297
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 298
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 297
    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private static b(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    .line 1100
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 605
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 606
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->i:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->s:Z

    return p0
.end method

.method private static c(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 7

    .line 1171
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->O:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1172
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->P:Landroid/util/Property;

    new-array v3, v1, [I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    aput v5, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1173
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->Q:Landroid/util/Property;

    new-array v5, v1, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v4

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1174
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->R:Landroid/util/Property;

    new-array v6, v1, [I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    aput p1, v6, v4

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 v5, 0x4

    .line 1175
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v4

    aput-object v2, v5, v1

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object p1, v5, v0

    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private c(I)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 311
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 322
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->G:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->G:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->m:I

    .line 323
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->i()V

    goto :goto_0

    .line 326
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->g()V

    goto :goto_0

    .line 319
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->g()V

    goto :goto_0

    .line 316
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->h()V

    .line 331
    :goto_0
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c:I

    .line 332
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(F)Z
    .locals 4

    .line 875
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->k:F

    sub-float/2addr v0, v3

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->k:F

    add-float/2addr v0, v3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private d()V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->M:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private d(I)V
    .locals 2

    const/4 v0, 0x1

    if-lez p1, :cond_0

    .line 836
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    .line 837
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 838
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->J:Z

    if-eq p1, v0, :cond_2

    .line 839
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->J:Z

    :cond_2
    return-void
.end method

.method private d(F)Z
    .locals 3

    .line 883
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    .line 884
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 885
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private e(F)V
    .locals 12

    .line 901
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    .line 902
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->G:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->G:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;->a()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_9

    int-to-float v3, v1

    mul-float v4, p1, v3

    float-to-int v4, v4

    add-int/lit8 v5, v1, -0x1

    .line 908
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$MathUtils;->a(II)I

    move-result v4

    .line 910
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->G:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    invoke-interface {v6, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;->b(I)I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    if-ge v4, v5, :cond_1

    .line 926
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->G:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    invoke-interface {v5, v7}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;->b(I)I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    if-ne v5, v6, :cond_5

    move v8, v4

    move v9, v6

    :cond_2
    if-lez v8, :cond_4

    add-int/lit8 v8, v8, -0x1

    .line 934
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->G:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    invoke-interface {v9, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;->b(I)I

    move-result v9

    if-eq v9, v6, :cond_3

    goto :goto_2

    :cond_3
    if-nez v8, :cond_2

    move v8, v4

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    move v6, v4

    move v8, v6

    goto :goto_3

    :cond_5
    move v8, v4

    move v9, v6

    :goto_2
    move v6, v8

    :goto_3
    add-int/lit8 v10, v7, 0x1

    :goto_4
    if-ge v10, v1, :cond_6

    .line 954
    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->G:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    .line 955
    invoke-interface {v11, v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;->b(I)I

    move-result v11

    if-ne v11, v5, :cond_6

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    int-to-float v1, v8

    div-float/2addr v1, v3

    int-to-float v7, v7

    div-float/2addr v7, v3

    if-nez v0, :cond_7

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_5

    :cond_7
    const/high16 v3, 0x3e000000    # 0.125f

    int-to-float v10, v0

    div-float/2addr v3, v10

    :goto_5
    if-ne v8, v4, :cond_8

    sub-float v4, p1, v1

    cmpg-float v3, v4, v3

    if-gez v3, :cond_8

    goto :goto_6

    :cond_8
    sub-int/2addr v5, v9

    int-to-float v3, v5

    sub-float/2addr p1, v1

    mul-float v3, v3, p1

    sub-float/2addr v7, v1

    div-float/2addr v3, v7

    float-to-int p1, v3

    add-int/2addr v9, p1

    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 976
    invoke-static {v9, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$MathUtils;->a(II)I

    move-result p1

    goto :goto_7

    :cond_9
    int-to-float v1, v0

    mul-float p1, p1, v1

    float-to-int p1, p1

    add-int/lit8 v0, v0, -0x1

    .line 978
    invoke-static {p1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$MathUtils;->a(III)I

    move-result p1

    const/4 v6, -0x1

    .line 982
    :goto_7
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 983
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_a

    .line 984
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_8

    .line 985
    :cond_a
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_b

    .line 986
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, p1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 989
    :cond_b
    :goto_8
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->m:I

    if-eq p1, v6, :cond_f

    .line 990
    iput v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->m:I

    const/4 p1, 0x0

    .line 993
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->G:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    if-eqz v0, :cond_c

    if-ltz v6, :cond_c

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->G:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    .line 994
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;->a()I

    move-result v0

    if-ge v6, v0, :cond_c

    .line 995
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->G:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    invoke-interface {p1, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 997
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->n:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->n:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 998
    :cond_d
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->n:Ljava/lang/String;

    .line 999
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->n:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Ljava/lang/String;)Z

    move-result p1

    .line 1000
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->H:Z

    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    .line 1001
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->i()V

    goto :goto_9

    .line 1002
    :cond_e
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->H:Z

    if-eqz v0, :cond_f

    if-nez p1, :cond_f

    .line 1003
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->g()V

    :cond_f
    :goto_9
    return-void
.end method

.method private e()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->J:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()V
    .locals 5

    .line 336
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    .line 341
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    const/4 v4, 0x2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c:I

    if-eq v1, v4, :cond_3

    .line 343
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->I:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 344
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->I:F

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(F)V

    .line 345
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->I:F

    goto :goto_0

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    .line 348
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 350
    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(III)F

    move-result v1

    .line 351
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(F)V

    .line 355
    :cond_3
    :goto_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->l:I

    if-eq v1, v0, :cond_4

    .line 356
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->l:I

    .line 357
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c:I

    if-eq v0, v4, :cond_4

    .line 358
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c(I)V

    .line 359
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->d()V

    :cond_4
    return-void

    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c(I)V

    return-void
.end method

.method private g()V
    .locals 12

    .line 370
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->q:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 374
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 375
    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v3, 0xa7

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 376
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x3

    new-array v7, v6, [Landroid/view/View;

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->B:Landroid/widget/TextView;

    aput-object v8, v7, v2

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->C:Landroid/widget/TextView;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const/4 v8, 0x0

    .line 377
    invoke-static {v1, v8, v7}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    .line 378
    invoke-virtual {v1, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 379
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v2, [Landroid/view/View;

    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    aput-object v11, v10, v5

    invoke-static {v7, v8, v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v7

    .line 380
    invoke-virtual {v7, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    .line 382
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->q:Landroid/animation/AnimatorSet;

    .line 383
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->q:Landroid/animation/AnimatorSet;

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v5

    aput-object v1, v6, v2

    aput-object v3, v6, v9

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 386
    iput-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->H:Z

    return-void
.end method

.method private h()V
    .locals 10

    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->q:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 395
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->B:Landroid/widget/TextView;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->C:Landroid/widget/TextView;

    aput-object v7, v2, v3

    .line 396
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0xa7

    .line 397
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 400
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->i:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    :goto_0
    int-to-float v3, v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    neg-int v3, v3

    goto :goto_0

    .line 401
    :goto_1
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v5, [Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    aput-object v9, v8, v4

    invoke-static {v7, v3, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 402
    invoke-virtual {v3, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 404
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->q:Landroid/animation/AnimatorSet;

    .line 405
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->q:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 408
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->H:Z

    return-void
.end method

.method private i()V
    .locals 10

    .line 413
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->q:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 417
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v3, 0xa7

    .line 418
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 419
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x0

    new-array v8, v6, [Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    aput-object v9, v8, v5

    invoke-static {v1, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    .line 420
    invoke-virtual {v1, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 422
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->q:Landroid/animation/AnimatorSet;

    .line 423
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->q:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 424
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 426
    iput-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->H:Z

    return-void
.end method

.method private j()V
    .locals 5

    .line 572
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->t:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 573
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 574
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 575
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 576
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 578
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getScrollBarStyle()I

    move-result v1

    const/high16 v2, 0x1000000

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_2

    .line 581
    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 582
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 583
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v2, :cond_2

    .line 587
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->e:I

    .line 588
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 589
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 591
    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_0
    return-void
.end method

.method private k()Z
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 705
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 704
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private l()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 849
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->g:J

    return-void
.end method

.method private m()V
    .locals 4

    .line 857
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->g:J

    return-void
.end method

.method private n()V
    .locals 2

    .line 890
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a:Ljava/lang/String;

    const-string v1, "beginDrag() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    .line 891
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->g:J

    .line 893
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 894
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    const/4 v0, 0x2

    .line 896
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c(I)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 519
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->h:Z

    .line 523
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->j()V

    .line 525
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->u:Landroid/graphics/Rect;

    .line 527
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/graphics/Rect;)V

    .line 528
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 530
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->B:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 531
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->B:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 532
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->C:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 533
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->C:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 535
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 537
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 538
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 539
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 540
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 541
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    const/4 v0, 0x0

    .line 544
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->h:Z

    return-void
.end method

.method a(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->x:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(IF)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method a(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->K:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;

    return-void
.end method

.method a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->G:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    return-void
.end method

.method a(Z)V
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->f:Z

    if-eq v0, p1, :cond_1

    .line 260
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->f:Z

    .line 261
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 262
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c(I)V

    .line 263
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->L:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->L:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method a(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 713
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 716
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    .line 781
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent() INVALID ACTION.. actionMasked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 773
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->l()V

    .line 774
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c:I

    if-ne p1, v4, :cond_6

    .line 775
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 776
    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c(I)V

    .line 777
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->d()V

    goto/16 :goto_0

    .line 754
    :pswitch_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTouchEvent() ACTION_MOVE.. mState= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mInitialTouchY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->p:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->g:J

    cmp-long v0, v6, v2

    if-ltz v0, :cond_1

    .line 757
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->p:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->o:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 758
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->n()V

    .line 760
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c:I

    if-ne v0, v4, :cond_6

    .line 762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(F)F

    move-result v0

    .line 763
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->I:F

    .line 764
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(F)V

    .line 765
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->e(F)V

    .line 766
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->K:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;

    if-eqz v0, :cond_2

    .line 767
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->K:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;->a(F)V

    :cond_2
    return v5

    .line 730
    :pswitch_2
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTouchEvent() ACTION_UP.. mState= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->g:J

    cmp-long v0, v6, v2

    if-ltz v0, :cond_3

    .line 733
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->n()V

    .line 734
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(F)F

    move-result v0

    .line 735
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->I:F

    .line 736
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(F)V

    .line 737
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->e(F)V

    .line 738
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent() ACTION_UP.. open() called with posY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 738
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_3
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c:I

    if-ne v0, v4, :cond_6

    .line 743
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 744
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 745
    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c(I)V

    .line 746
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->d()V

    .line 747
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->K:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;

    if-eqz v0, :cond_4

    .line 748
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->K:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;->b(F)V

    :cond_4
    return v5

    .line 719
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 720
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->n()V

    .line 721
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent() ACTION_DOWN.. open() called with posY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 721
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->K:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;

    if-eqz v0, :cond_5

    .line 724
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->K:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;->a(F)V

    :cond_5
    return v5

    :cond_6
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method b()I
    .locals 1

    .line 659
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->e:I

    return v0
.end method

.method b(I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 489
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 490
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 494
    :cond_1
    :goto_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->d:I

    if-eq v1, p1, :cond_3

    .line 495
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->d:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 496
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->i:Z

    .line 498
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->F:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 499
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->E:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 501
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->E:I

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    .line 502
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 501
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 503
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 504
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 506
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->F:I

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->A:Landroid/widget/ImageView;

    .line 507
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    .line 506
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 508
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 509
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 511
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a()V

    :cond_3
    return-void
.end method

.method b(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 787
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 790
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 798
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 799
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->l()V

    goto :goto_0

    .line 800
    :cond_1
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->g:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->g:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 801
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->n()V

    .line 802
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->p:F

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(F)F

    move-result v0

    .line 803
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->I:F

    .line 804
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->e(F)V

    .line 805
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 810
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->l()V

    goto :goto_0

    .line 792
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->p:F

    .line 794
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->m()V

    :cond_2
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method c()V
    .locals 4

    .line 819
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 820
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    .line 821
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->y:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->z:I

    if-eq v2, v0, :cond_3

    .line 822
    :cond_0
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->y:I

    .line 823
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->z:I

    sub-int v2, v1, v0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 826
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 827
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    .line 828
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(III)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(F)V

    .line 831
    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->d(I)V

    :cond_3
    return-void
.end method
