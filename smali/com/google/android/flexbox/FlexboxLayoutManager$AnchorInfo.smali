.class Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/flexbox/FlexboxLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnchorInfo"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/google/android/flexbox/FlexboxLayoutManager;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2823
    const-class v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->a:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V
    .locals 0

    .line 2823
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2834
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V
    .locals 0

    .line 2823
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I
    .locals 0

    .line 2823
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d:I

    return p1
.end method

.method private a()V
    .locals 4

    const/4 v0, -0x1

    .line 2843
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c:I

    .line 2844
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d:I

    const/high16 v0, -0x80000000

    .line 2845
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e:I

    const/4 v0, 0x0

    .line 2846
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->h:Z

    .line 2847
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->i:Z

    .line 2848
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 2849
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2850
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g:Z

    goto :goto_0

    .line 2852
    :cond_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g:Z

    goto :goto_0

    .line 2855
    :cond_3
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    move-result v1

    if-nez v1, :cond_5

    .line 2856
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g:Z

    goto :goto_0

    .line 2858
    :cond_5
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    move-result v1

    if-ne v1, v2, :cond_6

    const/4 v0, 0x1

    :cond_6
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g:Z

    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .line 2874
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(Lcom/google/android/flexbox/FlexboxLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2877
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g:Z

    if-eqz v0, :cond_0

    .line 2878
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 2879
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e:I

    goto :goto_0

    .line 2881
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e:I

    goto :goto_0

    .line 2884
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g:Z

    if-eqz v0, :cond_2

    .line 2885
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 2886
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e:I

    goto :goto_0

    .line 2888
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e:I

    .line 2891
    :goto_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c:I

    const/4 p1, 0x0

    .line 2892
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->i:Z

    .line 2893
    sget-boolean v0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->a:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e(Lcom/google/android/flexbox/FlexboxLayoutManager;)Lcom/google/android/flexbox/FlexboxHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2894
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 2895
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e(Lcom/google/android/flexbox/FlexboxLayoutManager;)Lcom/google/android/flexbox/FlexboxHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c:I

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    aget v0, v0, v1

    if-eq v0, v2, :cond_6

    move p1, v0

    .line 2896
    :cond_6
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d:I

    .line 2900
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f(Lcom/google/android/flexbox/FlexboxLayoutManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d:I

    if-le p1, v0, :cond_7

    .line 2901
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f(Lcom/google/android/flexbox/FlexboxLayoutManager;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/FlexLine;

    iget p1, p1, Lcom/google/android/flexbox/FlexLine;->o:I

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c:I

    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Landroid/view/View;)V
    .locals 0

    .line 2823
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z
    .locals 0

    .line 2823
    iget-boolean p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->h:Z

    return p0
.end method

.method static synthetic a(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z
    .locals 0

    .line 2823
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I
    .locals 0

    .line 2823
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c:I

    return p1
.end method

.method private b()V
    .locals 2

    .line 2864
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(Lcom/google/android/flexbox/FlexboxLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2865
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 2866
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e:I

    goto :goto_2

    .line 2868
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 2869
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e:I

    :goto_2
    return-void
.end method

.method static synthetic b(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V
    .locals 0

    .line 2823
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->a()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z
    .locals 0

    .line 2823
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I
    .locals 0

    .line 2823
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z
    .locals 0

    .line 2823
    iget-boolean p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z
    .locals 0

    .line 2823
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g:Z

    return p1
.end method

.method static synthetic d(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I
    .locals 0

    .line 2823
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I
    .locals 0

    .line 2823
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->f:I

    return p1
.end method

.method static synthetic e(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I
    .locals 0

    .line 2823
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d:I

    return p0
.end method

.method static synthetic f(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V
    .locals 0

    .line 2823
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b()V

    return-void
.end method

.method static synthetic g(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I
    .locals 0

    .line 2823
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->f:I

    return p0
.end method

.method static synthetic h(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I
    .locals 0

    .line 2823
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e:I

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 2907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFlexLinePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPerpendicularCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAssignedFromSavedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
