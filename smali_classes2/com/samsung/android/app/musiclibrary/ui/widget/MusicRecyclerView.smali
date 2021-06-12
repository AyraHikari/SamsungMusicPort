.class public Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$FastScrollSectionIndexer;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnCustomScrollListener;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;
    }
.end annotation


# static fields
.field public static final b:I = 0x0

# The value of this static final field might be set in the static constructor
.field public static final c:I = 0x1

# The value of this static final field might be set in the static constructor
.field public static final d:I = 0x2

# The value of this static final field might be set in the static constructor
.field public static final e:I = 0x3

.field public static final f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;

# The value of this static final field might be set in the static constructor
.field private static final z:I = 0x4


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnCustomScrollListener;

.field private g:Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/OnSizeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/OnPaddingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

.field private k:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;

.field private l:Z

.field private m:Z

.field private n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

.field private final o:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

.field private p:Landroid/util/SparseBooleanArray;

.field private q:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/support/v7/view/ActionMode;

.field private s:I

.field private t:J

.field private u:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

.field private v:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field private w:Z

.field private final x:Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureObservableImpl;

.field private y:Lcom/samsung/android/app/musiclibrary/ui/list/SupportActionModeInvoker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;

    const/4 v0, 0x1

    .line 878
    sput v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->c:I

    const/4 v0, 0x2

    .line 882
    sput v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d:I

    const/4 v0, 0x3

    .line 886
    sput v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    const/4 v0, 0x4

    .line 890
    sput v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->z:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->h:Ljava/util/ArrayList;

    .line 46
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->i:Ljava/util/ArrayList;

    .line 79
    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

    invoke-direct {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->o:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

    .line 94
    sget p3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->b:I

    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    const/4 p3, -0x1

    int-to-long v0, p3

    .line 121
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->t:J

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->w:Z

    .line 168
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureObservableImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureObservableImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->x:Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureObservableImpl;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/R$styleable;->RoundedRecyclerView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 175
    :try_start_0
    sget p2, Lcom/samsung/android/app/musiclibrary/R$styleable;->RoundedRecyclerView_round:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    if-eq p2, p3, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 181
    new-instance p3, Ljava/lang/RuntimeException;

    goto :goto_1

    :pswitch_0
    const/16 p2, 0xf

    goto :goto_0

    :pswitch_1
    const/16 p2, 0xc

    goto :goto_0

    :pswitch_2
    const/4 p2, 0x3

    .line 183
    :goto_0
    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    new-array v0, v1, [I

    invoke-direct {p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    .line 184
    invoke-virtual {p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a(I)V

    .line 183
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->g:Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    .line 186
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->g:Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_2

    .line 181
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid value roundValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Throwable;

    throw p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_0
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->g()V

    return-void

    :catchall_0
    move-exception p2

    .line 189
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 38
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->u:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;IZZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 299
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(IZZ)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setItemChecked"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Landroid/support/v7/view/ActionMode;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    return-void
.end method

.method public static final synthetic f()I
    .locals 1

    .line 37
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->z:I

    return v0
.end method

.method private final g()V
    .locals 1

    const/4 v0, 0x2

    .line 215
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setImportantForAccessibility(I)V

    .line 216
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$initImportantForAccessibility$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$initImportantForAccessibility$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static final getCHOICE_MODE_MULTIPLE_MODAL_2()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$Companion;

    sget v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->z:I

    return v0
.end method


# virtual methods
.method public final a(IIZ)V
    .locals 7

    .line 346
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 348
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_1

    if-gt p1, p2, :cond_3

    move v1, p1

    .line 350
    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v5, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 351
    invoke-virtual {p0, v1, p3, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(IZZ)V

    .line 352
    invoke-virtual {v5, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->safeNotifyItemChanged(I)V

    :cond_0
    if-eq v1, p2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-gt p1, p2, :cond_3

    move v1, p1

    .line 357
    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_2

    .line 358
    invoke-virtual {p0, v1, p3, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(IZZ)V

    .line 359
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2
    if-eq v1, p2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_5

    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->a(Landroid/support/v7/view/ActionMode;)V

    .line 367
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->o:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;->a(IIZ)V

    return-void
.end method

.method public final a(IZZ)V
    .locals 4

    const-string v0, "MusicRecyclerView"

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setItemChecked() position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " | choice mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 307
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d:I

    if-eq v1, v2, :cond_8

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    if-eq v1, v2, :cond_8

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->z:I

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 324
    :cond_0
    iget p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->c:I

    if-ne p3, v1, :cond_f

    .line 325
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p2, :cond_2

    .line 328
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 329
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->p:Landroid/util/SparseBooleanArray;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz p3, :cond_5

    .line 331
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    :cond_5
    if-eqz p2, :cond_f

    .line 337
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->p:Landroid/util/SparseBooleanArray;

    if-nez p2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    invoke-virtual {p2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz p3, :cond_f

    .line 339
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez p2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 309
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->p:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_9
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz p2, :cond_b

    .line 311
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    .line 312
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->t:J

    .line 313
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez v2, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    :cond_b
    const/4 v1, -0x1

    int-to-long v1, v1

    .line 315
    iput-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->t:J

    .line 316
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez v1, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_c
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    .line 318
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_e

    if-eqz p3, :cond_e

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    if-nez v0, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->a(Landroid/support/v7/view/ActionMode;)V

    :cond_e
    if-eqz p3, :cond_f

    .line 322
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->o:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

    invoke-virtual {p3, p1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;->a(IIZ)V

    :cond_f
    :goto_3
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->o:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->x:Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureObservableImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureObservableImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureListener;)V

    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/widget/OnPaddingChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/widget/OnSizeChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->l:Z

    return v0
.end method

.method public final a(I)Z
    .locals 2

    .line 372
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->b:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->p:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->p:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->g:Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->g:Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RoundableItemDecoration;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->g:Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const/4 v0, 0x0

    .line 607
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->g:Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    .line 610
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->o:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->m:Z

    return v0
.end method

.method public final c()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->p:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    :cond_1
    const/4 v0, -0x1

    int-to-long v0, v0

    .line 295
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->t:J

    return-void
.end method

.method public final d()V
    .locals 13

    const-string v0, "MusicRecyclerView"

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmCheckedPositionsById() - S | checkedIdStates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 380
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->b:I

    if-eq v1, v2, :cond_12

    .line 379
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->p:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    const-string v1, "adapter"

    .line 389
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 392
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez v5, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_d

    .line 393
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez v5, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {v5, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    .line 394
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez v7, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {v7, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const-string v8, "lastPos"

    .line 396
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v8

    const/4 v10, 0x1

    cmp-long v8, v5, v8

    if-eqz v8, :cond_a

    .line 399
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, -0x14

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 400
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_1
    if-ge v8, v7, :cond_8

    .line 403
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v11

    cmp-long v9, v5, v11

    if-nez v9, :cond_7

    .line 406
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->p:Landroid/util/SparseBooleanArray;

    if-nez v7, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    invoke-virtual {v7, v8, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 407
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez v7, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_c

    .line 413
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez v4, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_9
    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->delete(J)V

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    goto :goto_3

    .line 418
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->p:Landroid/util/SparseBooleanArray;

    if-nez v5, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_b
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_c
    :goto_3
    add-int/2addr v3, v10

    goto/16 :goto_0

    .line 423
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_10

    .line 424
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->a(Landroid/support/v7/view/ActionMode;)V

    :cond_e
    if-eqz v4, :cond_10

    .line 426
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_10

    .line 427
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    if-nez v0, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_f
    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->invalidate()V

    :cond_10
    const-string v0, "MusicRecyclerView"

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmCheckedPositionsById() - X / checkedCountChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " checkedIdStates.size(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez v2, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_11
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    :goto_4
    return-void
.end method

.method public final e()Landroid/support/v7/view/ActionMode;
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->y:Lcom/samsung/android/app/musiclibrary/ui/list/SupportActionModeInvoker;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v1, Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SupportActionModeInvoker;->a(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    .line 537
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    return-object v0
.end method

.method public final getActionMode()Landroid/support/v7/view/ActionMode;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    return-object v0
.end method

.method public getCheckedItemCount()I
    .locals 4

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    :cond_2
    const-string v0, "MusicRecyclerView"

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCheckedItemCount() | count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public final getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 3

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->b:I

    if-eq v0, v2, :cond_2

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->p:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    goto :goto_0

    .line 138
    :cond_2
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    :goto_0
    return-object v0

    .line 133
    :cond_3
    :goto_1
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    return-object v0
.end method

.method public final getChoiceMode()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    return v0
.end method

.method public final getLastCheckedItemPosition()I
    .locals 4

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 156
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->t:J

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_0
    const-string v1, "MusicRecyclerView"

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastCheckedItemPosition() | position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "position"

    .line 165
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 273
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 275
    :cond_1
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->getVerticalScrollbarWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    goto :goto_0

    :cond_0
    const-string v0, "MusicRecyclerView"

    const-string v1, "invalidateItemDecorations is called while computing layout"

    .line 288
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 0

    .line 600
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenVertical(I)V

    .line 601
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnCustomScrollListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnCustomScrollListener;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 257
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(I)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 208
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/RecyclerView;->onLayout(ZIIII)V

    .line 209
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->c()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 203
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onMeasure(II)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->x:Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureObservableImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureObservableImpl;->a(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    const-string v0, "MusicRecyclerView"

    const-string v1, "onRestoreInstanceState()"

    .line 484
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;

    if-eqz p1, :cond_1

    .line 486
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    :cond_1
    invoke-super {p0, v1}, Landroid/support/v7/widget/RecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    if-eqz p1, :cond_7

    .line 491
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->z:I

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    if-eqz v0, :cond_4

    .line 493
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 494
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    .line 497
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->b()Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 498
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->b()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->p:Landroid/util/SparseBooleanArray;

    .line 500
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->c()Landroid/util/LongSparseArray;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 501
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->c()Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    .line 503
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->t:J

    return-void

    :cond_7
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 262
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onRtlPropertiesChanged(I)V

    .line 263
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getVerticalScrollbarPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(I)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    const-string v0, "MusicRecyclerView"

    const-string v1, "onSaveInstanceState()"

    .line 507
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 510
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;

    const-string v2, "superState"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 513
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->z:I

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->a(Z)V

    .line 516
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->p:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_3

    .line 517
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->p:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->a(Landroid/util/SparseBooleanArray;)V

    .line 519
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_8

    .line 520
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 521
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_7

    .line 523
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez v4, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez v6, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    invoke-virtual {v6, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 525
    :cond_7
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->a(Landroid/util/LongSparseArray;)V

    .line 527
    :cond_8
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->t:J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->a(J)V

    .line 528
    check-cast v1, Landroid/os/Parcelable;

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 249
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/OnSizeChangedListener;

    .line 251
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/widget/OnSizeChangedListener;->a(IIII)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final setActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ActionModeListener;)V

    return-void
.end method

.method public final setChoiceMode(I)V
    .locals 3

    const-string v0, "MusicRecyclerView"

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChoiceMode() | choiceMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    if-eqz p1, :cond_1

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    const/4 p1, 0x0

    .line 100
    check-cast p1, Landroid/support/v7/view/ActionMode;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->r:Landroid/support/v7/view/ActionMode;

    .line 102
    :cond_1
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    sget v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->b:I

    if-eq p1, v0, :cond_5

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->p:Landroid/util/SparseBooleanArray;

    if-nez p1, :cond_2

    .line 104
    new-instance p1, Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->p:Landroid/util/SparseBooleanArray;

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    if-nez p1, :cond_3

    .line 107
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->q:Landroid/util/LongSparseArray;

    .line 109
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->u:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    if-nez p1, :cond_4

    .line 110
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->u:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    .line 112
    :cond_4
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    check-cast p1, Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->seslSetOnMultiSelectedListener(Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;)V

    .line 114
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->c()V

    .line 115
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    sget v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    if-eq p1, v0, :cond_6

    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->s:I

    sget v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->z:I

    if-ne p1, v0, :cond_7

    .line 116
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->u:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setOnMultipleItemSelectionListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;)V

    :cond_7
    return-void
.end method

.method public final setFastScrollEnabled(Z)V
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->l:Z

    if-eq v0, p1, :cond_3

    .line 55
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->l:Z

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz p1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 58
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->l:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Z)V

    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a()V

    goto :goto_0

    .line 61
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->l:Z

    if-eqz p1, :cond_3

    .line 62
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    move-object v0, p0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Z)V

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a()V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;)V

    .line 62
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    :cond_3
    :goto_0
    return-void
.end method

.method public final setFastScrollEventListener(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;)V
    .locals 1

    .line 442
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;

    .line 443
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScrollEventListener;)V

    :cond_0
    return-void
.end method

.method public final setFastScrollIndexEnabled(Z)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$FastScrollSectionIndexer;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$FastScrollSectionIndexer;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;)V

    :cond_1
    return-void
.end method

.method public final setGoToTopEnabled(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->m:Z

    .line 74
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V
    .locals 1

    .line 569
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->w:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 570
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->v:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    return-void
.end method

.method public final setOnChildrenOffsetChangedListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnCustomScrollListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnCustomScrollListener;

    return-void
.end method

.method public final setOnMultipleItemSelectionListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->u:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 2

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView;->setPaddingRelative(IIII)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/OnPaddingChangedListener;

    .line 198
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/widget/OnPaddingChangedListener;->a(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setPrimaryColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 478
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(I)V

    :cond_1
    return-void
.end method

.method public final setSupportActionModeInvoker$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/ui/list/SupportActionModeInvoker;)V
    .locals 1

    const-string v0, "invoker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->y:Lcom/samsung/android/app/musiclibrary/ui/list/SupportActionModeInvoker;

    return-void
.end method

.method public final setUserVisibleHint(Z)V
    .locals 1

    .line 574
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->w:Z

    .line 575
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->w:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setGoToTopEnabled(Z)V

    if-eqz p1, :cond_0

    .line 578
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->v:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 581
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_1
    const/4 p1, 0x0

    .line 582
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    :goto_0
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1

    .line 280
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollbarPosition(I)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->j:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(I)V

    :cond_0
    return-void
.end method
