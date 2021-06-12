.class public Lcom/dawin/objects/b;
.super Landroid/widget/RelativeLayout;


# instance fields
.field public a:Lcom/dawin/objects/c;

.field public b:Lcom/dawin/objects/a;

.field public c:I

.field public d:I

.field public e:Z

.field private f:Landroid/content/Context;

.field private g:Lcom/dawin/util/c;

.field private h:Landroid/widget/ImageButton;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/dawin/objects/b;->k:I

    iput v0, p0, Lcom/dawin/objects/b;->l:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/dawin/objects/b;->c:I

    iput v1, p0, Lcom/dawin/objects/b;->d:I

    iput-boolean v0, p0, Lcom/dawin/objects/b;->e:Z

    iput v1, p0, Lcom/dawin/objects/b;->m:I

    const-string v2, ""

    iput-object v2, p0, Lcom/dawin/objects/b;->n:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/dawin/objects/b;->o:Ljava/lang/String;

    iput v1, p0, Lcom/dawin/objects/b;->p:I

    iput v0, p0, Lcom/dawin/objects/b;->q:I

    iput v1, p0, Lcom/dawin/objects/b;->r:I

    iput v1, p0, Lcom/dawin/objects/b;->s:I

    iput-object p1, p0, Lcom/dawin/objects/b;->f:Landroid/content/Context;

    new-instance p1, Lcom/dawin/util/c;

    iget-object v0, p0, Lcom/dawin/objects/b;->f:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/dawin/util/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dawin/objects/b;->g:Lcom/dawin/util/c;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dawin/objects/b;->i:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dawin/objects/b;->j:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/dawin/objects/b;)I
    .locals 0

    iget p0, p0, Lcom/dawin/objects/b;->m:I

    return p0
.end method

.method private a(IILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "s"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p3, "%01d"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    :goto_0
    invoke-static {p1, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_0
    const-string v1, "ss"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p3, "%02d"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    goto :goto_0

    :cond_1
    const-string v1, "sss"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string v0, "%03d"

    new-array v1, v3, [Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    const-string v1, "m:ss"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%01d"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v0, "%02d"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    :goto_1
    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v1, "mm:ss"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%02d"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v0, "%02d"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0
.end method

.method static synthetic b(Lcom/dawin/objects/b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/dawin/objects/b;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c(Lcom/dawin/objects/b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/dawin/objects/b;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcom/dawin/objects/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/dawin/objects/b;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/dawin/objects/b;)I
    .locals 0

    iget p0, p0, Lcom/dawin/objects/b;->s:I

    return p0
.end method


# virtual methods
.method public a(F)I
    .locals 2

    iget-object v0, p0, Lcom/dawin/objects/b;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "px"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "px"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    int-to-float p1, v0

    invoke-virtual {p0, p1}, Lcom/dawin/objects/b;->a(F)I

    move-result p1

    return p1
.end method

.method public a(II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    iget-object v0, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v0, v0, Lcom/dawin/objects/c;->h:Ljava/lang/String;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v0, v0, Lcom/dawin/objects/c;->h:Ljava/lang/String;

    const-string v1, "%"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0x64

    :goto_0
    iput v0, p0, Lcom/dawin/objects/b;->k:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v0, v0, Lcom/dawin/objects/c;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v0, v0, Lcom/dawin/objects/c;->i:Ljava/lang/String;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v0, v0, Lcom/dawin/objects/c;->i:Ljava/lang/String;

    const-string v1, "%"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int v0, v0, p2

    div-int/lit8 v0, v0, 0x64

    :goto_2
    iput v0, p0, Lcom/dawin/objects/b;->l:I

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v0, v0, Lcom/dawin/objects/c;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :goto_3
    iget v0, p0, Lcom/dawin/objects/b;->k:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/dawin/objects/b;->l:I

    if-lez v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/dawin/objects/b;->k:I

    iget v2, p0, Lcom/dawin/objects/b;->l:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_4

    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_4
    iget-object v1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v1, v1, Lcom/dawin/objects/c;->d:Ljava/lang/String;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v1, v1, Lcom/dawin/objects/c;->d:Ljava/lang/String;

    const-string v2, "%"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int v1, v1, p1

    div-int/lit8 v1, v1, 0x64

    :goto_5
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_6

    :cond_3
    iget-object v1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v1, v1, Lcom/dawin/objects/c;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    :goto_6
    iget-object v1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v1, v1, Lcom/dawin/objects/c;->e:Ljava/lang/String;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v1, v1, Lcom/dawin/objects/c;->e:Ljava/lang/String;

    const-string v2, "%"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int v1, v1, p2

    div-int/lit8 v1, v1, 0x64

    :goto_7
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_8

    :cond_4
    iget-object v1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v1, v1, Lcom/dawin/objects/c;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result v1

    goto :goto_7

    :goto_8
    iget-object v1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v1, v1, Lcom/dawin/objects/c;->f:Ljava/lang/String;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v1, v1, Lcom/dawin/objects/c;->f:Ljava/lang/String;

    const-string v2, "%"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int p1, p1, v1

    div-int/lit8 p1, p1, 0x64

    :goto_9
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_a

    :cond_5
    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result p1

    goto :goto_9

    :goto_a
    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->g:Ljava/lang/String;

    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->g:Ljava/lang/String;

    const-string v1, "%"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int p2, p2, p1

    div-int/lit8 p2, p2, 0x64

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_b

    :cond_6
    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->g:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_b
    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->d:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->d:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const/16 p1, 0x9

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_7
    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->e:Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->e:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_8
    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->f:Ljava/lang/String;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->f:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_9
    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->g:Ljava/lang/String;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->g:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_a
    return-object v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget v0, v0, Lcom/dawin/objects/c;->a:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dawin/objects/b;->b:Lcom/dawin/objects/a;

    invoke-virtual {v0}, Lcom/dawin/objects/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/objects/b;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/dawin/objects/b$2;

    invoke-direct {v1, p0}, Lcom/dawin/objects/b$2;-><init>(Lcom/dawin/objects/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/dawin/objects/c;Lcom/dawin/objects/a;I)V
    .locals 12

    iput-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iput-object p2, p0, Lcom/dawin/objects/b;->b:Lcom/dawin/objects/a;

    iput p3, p0, Lcom/dawin/objects/b;->s:I

    :try_start_0
    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->q:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->q:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->q:Ljava/lang/String;

    invoke-static {p1}, Lcom/dawin/util/CommonUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dawin/objects/b;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->r:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->r:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/dawin/util/CommonUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dawin/objects/b;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget p1, p1, Lcom/dawin/objects/c;->a:I

    const/16 p2, 0xc8

    const/4 p3, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_2

    new-instance p1, Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/dawin/objects/b;->f:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dawin/objects/b;->h:Landroid/widget/ImageButton;

    iget-object p1, p0, Lcom/dawin/objects/b;->g:Lcom/dawin/util/c;

    iget-object p2, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p2, p2, Lcom/dawin/objects/c;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/dawin/objects/b;->h:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2, v2, v0}, Lcom/dawin/util/c;->a(Ljava/lang/String;Landroid/widget/ImageButton;Z)Z

    iget-object p1, p0, Lcom/dawin/objects/b;->h:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object p1, p0, Lcom/dawin/objects/b;->h:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object p1, p0, Lcom/dawin/objects/b;->h:Landroid/widget/ImageButton;

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/dawin/objects/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_c

    :cond_2
    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget p1, p1, Lcom/dawin/objects/c;->a:I

    const/16 p2, 0x64

    if-ne p1, p2, :cond_1c

    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1c

    const/4 p1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v2, v2, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1a

    :try_start_2
    iget-object v2, p0, Lcom/dawin/objects/b;->b:Lcom/dawin/objects/a;

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/16 v5, 0x9

    const/16 v6, 0xa

    const v7, 0x9c40

    const/4 v8, -0x2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dawin/objects/b;->b:Lcom/dawin/objects/a;

    invoke-virtual {v2}, Lcom/dawin/objects/a;->a()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-boolean v2, v2, Lcom/dawin/objects/c;->k:Z

    if-ne v2, v0, :cond_c

    new-instance v2, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/dawin/objects/b;->f:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v9, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget v9, v9, Lcom/dawin/objects/c;->c:I

    if-ne v9, v7, :cond_3

    iget v9, p0, Lcom/dawin/objects/b;->p:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-ne v9, p3, :cond_3

    :try_start_3
    iget-object v9, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v9, v9, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dawin/objects/c$a;

    iget-object v9, v9, Lcom/dawin/objects/c$a;->c:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/dawin/objects/b;->p:I

    iget v9, p0, Lcom/dawin/objects/b;->p:I

    iput v9, p0, Lcom/dawin/objects/b;->q:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v9

    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    iget-object v9, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v9, v9, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dawin/objects/c$a;

    iget-object v9, v9, Lcom/dawin/objects/c$a;->b:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v9, v9, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dawin/objects/c$a;

    iget-object v9, v9, Lcom/dawin/objects/c$a;->a:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    iput p1, p0, Lcom/dawin/objects/b;->m:I

    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->b:Ljava/lang/String;

    iput-object v7, p0, Lcom/dawin/objects/b;->n:Ljava/lang/String;

    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->a:Ljava/lang/String;

    iput-object v7, p0, Lcom/dawin/objects/b;->o:Ljava/lang/String;

    iget-object v7, p0, Lcom/dawin/objects/b;->b:Lcom/dawin/objects/a;

    iget-object v9, p0, Lcom/dawin/objects/b;->f:Landroid/content/Context;

    iget v10, p0, Lcom/dawin/objects/b;->p:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v6, v10}, Lcom/dawin/objects/a;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    :goto_4
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_4
    iget-object v9, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget v9, v9, Lcom/dawin/objects/c;->c:I

    const/16 v10, 0x7530

    if-ne v9, v10, :cond_5

    iget-object v7, p0, Lcom/dawin/objects/b;->b:Lcom/dawin/objects/a;

    iget-object v9, p0, Lcom/dawin/objects/b;->f:Landroid/content/Context;

    const-string v10, ""

    invoke-virtual {v7, v9, p2, v10}, Lcom/dawin/objects/a;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_4

    :cond_5
    iget-object v9, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget v9, v9, Lcom/dawin/objects/c;->c:I

    if-ne v9, v7, :cond_7

    iget v7, p0, Lcom/dawin/objects/b;->s:I

    const/16 v9, 0x3e80

    if-lt v7, v9, :cond_6

    iget-object v7, p0, Lcom/dawin/objects/b;->b:Lcom/dawin/objects/a;

    iget-object v9, p0, Lcom/dawin/objects/b;->f:Landroid/content/Context;

    const/16 v10, 0x3e8

    const-string v11, ""

    invoke-virtual {v7, v9, v10, v11}, Lcom/dawin/objects/a;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_4

    :cond_6
    iget-object v7, p0, Lcom/dawin/objects/b;->b:Lcom/dawin/objects/a;

    iget-object v9, p0, Lcom/dawin/objects/b;->f:Landroid/content/Context;

    const/16 v10, 0x3e9

    const-string v11, ""

    invoke-virtual {v7, v9, v10, v11}, Lcom/dawin/objects/a;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_4

    :cond_7
    :goto_5
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v8, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v8, v8, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dawin/objects/c$a;

    iget-object v8, v8, Lcom/dawin/objects/c$a;->j:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v8, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v8, v8, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dawin/objects/c$a;

    iget-object v8, v8, Lcom/dawin/objects/c$a;->k:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v8, v8, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dawin/objects/c$a;

    iget-object v8, v8, Lcom/dawin/objects/c$a;->l:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v8, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v8, v8, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dawin/objects/c$a;

    iget-object v8, v8, Lcom/dawin/objects/c$a;->m:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v8, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v8, v8, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dawin/objects/c$a;

    iget-object v8, v8, Lcom/dawin/objects/c$a;->j:Ljava/lang/String;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v8, v8, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dawin/objects/c$a;

    iget-object v8, v8, Lcom/dawin/objects/c$a;->j:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_8
    iget-object v5, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v5, v5, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dawin/objects/c$a;

    iget-object v5, v5, Lcom/dawin/objects/c$a;->k:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v5, v5, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dawin/objects/c$a;

    iget-object v5, v5, Lcom/dawin/objects/c$a;->k:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_9
    iget-object v5, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v5, v5, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dawin/objects/c$a;

    iget-object v5, v5, Lcom/dawin/objects/c$a;->l:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v5, v5, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dawin/objects/c$a;

    iget-object v5, v5, Lcom/dawin/objects/c$a;->l:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_a
    iget-object v4, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v4, v4, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dawin/objects/c$a;

    iget-object v4, v4, Lcom/dawin/objects/c$a;->m:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v4, v4, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dawin/objects/c$a;

    iget-object v4, v4, Lcom/dawin/objects/c$a;->m:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_b
    iget-object v3, p0, Lcom/dawin/objects/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    invoke-virtual {p0, v2, v7}, Lcom/dawin/objects/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b

    :cond_c
    new-instance v2, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/dawin/objects/b;->f:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v9, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget v9, v9, Lcom/dawin/objects/c;->c:I

    if-ne v9, v7, :cond_d

    iget v7, p0, Lcom/dawin/objects/b;->p:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-ne v7, p3, :cond_d

    :try_start_5
    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->c:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/dawin/objects/b;->p:I

    iget v7, p0, Lcom/dawin/objects/b;->p:I

    iput v7, p0, Lcom/dawin/objects/b;->q:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception v7

    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_7
    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->f:Ljava/lang/String;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->g:Ljava/lang/String;

    const-string v9, "bold"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->g:Ljava/lang/String;

    const-string v9, "italic"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, 0x3

    goto :goto_8

    :cond_e
    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->g:Ljava/lang/String;

    const-string v9, "bold"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x1

    goto :goto_8

    :cond_f
    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->g:Ljava/lang/String;

    const-string v9, "italic"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x2

    goto :goto_8

    :cond_10
    const/4 v7, 0x0

    :goto_8
    iget-object v9, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v9, v9, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dawin/objects/c$a;

    iget-object v9, v9, Lcom/dawin/objects/c$a;->d:Ljava/lang/String;

    const-string v10, "sans-serif"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    sget-object v9, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_9
    invoke-virtual {v2, v9, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_a

    :cond_11
    iget-object v9, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v9, v9, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dawin/objects/c$a;

    iget-object v9, v9, Lcom/dawin/objects/c$a;->d:Ljava/lang/String;

    const-string v10, "serif"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_12

    sget-object v9, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_9

    :cond_12
    iget-object v9, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v9, v9, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dawin/objects/c$a;

    iget-object v9, v9, Lcom/dawin/objects/c$a;->d:Ljava/lang/String;

    const-string v10, "monospace"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_13

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_9

    :cond_13
    sget-object v9, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_9

    :goto_a
    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->e:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->i:Ljava/lang/String;

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->i:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->i:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    iget-object v9, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v9, v9, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dawin/objects/c$a;

    iget-object v9, v9, Lcom/dawin/objects/c$a;->h:Ljava/lang/String;

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v10, v10, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_14
    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->b:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->a:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    iput p1, p0, Lcom/dawin/objects/b;->m:I

    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->b:Ljava/lang/String;

    iput-object v7, p0, Lcom/dawin/objects/b;->n:Ljava/lang/String;

    iget-object v7, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v7, v7, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c$a;

    iget-object v7, v7, Lcom/dawin/objects/c$a;->a:Ljava/lang/String;

    iput-object v7, p0, Lcom/dawin/objects/b;->o:Ljava/lang/String;

    :cond_15
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v8, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v8, v8, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dawin/objects/c$a;

    iget-object v8, v8, Lcom/dawin/objects/c$a;->j:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v8, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v8, v8, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dawin/objects/c$a;

    iget-object v8, v8, Lcom/dawin/objects/c$a;->k:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v8, v8, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dawin/objects/c$a;

    iget-object v8, v8, Lcom/dawin/objects/c$a;->l:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v8, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v8, v8, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dawin/objects/c$a;

    iget-object v8, v8, Lcom/dawin/objects/c$a;->m:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v8, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v8, v8, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dawin/objects/c$a;

    iget-object v8, v8, Lcom/dawin/objects/c$a;->j:Ljava/lang/String;

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v8, v8, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dawin/objects/c$a;

    iget-object v8, v8, Lcom/dawin/objects/c$a;->j:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_16
    iget-object v5, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v5, v5, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dawin/objects/c$a;

    iget-object v5, v5, Lcom/dawin/objects/c$a;->k:Ljava/lang/String;

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v5, v5, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dawin/objects/c$a;

    iget-object v5, v5, Lcom/dawin/objects/c$a;->k:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_17
    iget-object v5, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v5, v5, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dawin/objects/c$a;

    iget-object v5, v5, Lcom/dawin/objects/c$a;->l:Ljava/lang/String;

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v5, v5, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dawin/objects/c$a;

    iget-object v5, v5, Lcom/dawin/objects/c$a;->l:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_18
    iget-object v4, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v4, v4, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dawin/objects/c$a;

    iget-object v4, v4, Lcom/dawin/objects/c$a;->m:Ljava/lang/String;

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v4, v4, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dawin/objects/c$a;

    iget-object v4, v4, Lcom/dawin/objects/c$a;->m:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_19
    iget-object v3, p0, Lcom/dawin/objects/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_6

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    :cond_1a
    :try_start_7
    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->o:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p2, p2, Lcom/dawin/objects/c;->n:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)I

    move-result p2

    iget-object p3, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p3, p3, Lcom/dawin/objects/c;->l:Ljava/lang/String;

    if-eqz p3, :cond_1c

    iget-object p3, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p3, p3, Lcom/dawin/objects/c;->l:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1c

    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    if-lez p2, :cond_1b

    iget-object v0, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v0, v0, Lcom/dawin/objects/c;->m:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v0, v0, Lcom/dawin/objects/c;->m:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v0, v0, Lcom/dawin/objects/c;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1b
    int-to-float p1, p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object p1, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, p3}, Lcom/dawin/objects/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_c

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    :goto_c
    return-void
.end method

.method public b(II)V
    .locals 3

    iget-object v0, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget v0, v0, Lcom/dawin/objects/c;->c:I

    const v1, 0xc350

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/dawin/objects/b;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/dawin/objects/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/dawin/objects/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/dawin/objects/b;->m:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dawin/objects/b;->o:Ljava/lang/String;

    const-string v2, "up"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    div-int/lit16 v0, p1, 0x3e8

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/dawin/objects/b;->o:Ljava/lang/String;

    const-string v2, "down"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    div-int/lit16 p2, p2, 0x3e8

    div-int/lit16 p1, p1, 0x3e8

    sub-int v0, p2, p1

    :cond_1
    :goto_0
    rem-int/lit16 v0, v0, 0xe10

    div-int/lit8 p1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    iget-object p2, p0, Lcom/dawin/objects/b;->n:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/dawin/objects/b;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/dawin/objects/b;->f:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    new-instance v0, Lcom/dawin/objects/b$1;

    invoke-direct {v0, p0, p1}, Lcom/dawin/objects/b$1;-><init>(Lcom/dawin/objects/b;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public setSkipDescriptionTime(I)V
    .locals 4

    iget-object v0, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget v0, v0, Lcom/dawin/objects/c;->a:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget v0, v0, Lcom/dawin/objects/c;->c:I

    const v1, 0x9c40

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-lez p1, :cond_2

    iget v2, p0, Lcom/dawin/objects/b;->p:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/dawin/objects/b;->m:I

    if-eq v2, v1, :cond_2

    iget-object v2, p0, Lcom/dawin/objects/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/dawin/objects/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/dawin/objects/b;->m:I

    if-lt v2, v3, :cond_2

    div-int/lit16 p1, p1, 0x3e8

    iget-object v1, p0, Lcom/dawin/objects/b;->o:Ljava/lang/String;

    const-string v2, "up"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/dawin/objects/b;->o:Ljava/lang/String;

    const-string v2, "down"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/dawin/objects/b;->p:I

    iget v2, p0, Lcom/dawin/objects/b;->q:I

    add-int/2addr v2, p1

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/dawin/objects/b;->p:I

    if-le v1, p1, :cond_1

    iget v0, p0, Lcom/dawin/objects/b;->p:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/dawin/objects/b;->q:I

    iget v0, p0, Lcom/dawin/objects/b;->q:I

    :cond_1
    :goto_0
    rem-int/lit16 v0, v0, 0xe10

    div-int/lit8 p1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/dawin/objects/b;->n:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/dawin/objects/b;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/dawin/objects/b;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/dawin/objects/b$3;

    invoke-direct {v1, p0, p1}, Lcom/dawin/objects/b$3;-><init>(Lcom/dawin/objects/b;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_2
    if-lez p1, :cond_5

    iget v2, p0, Lcom/dawin/objects/b;->p:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/dawin/objects/b;->m:I

    if-eq v2, v1, :cond_5

    iget-object v1, p0, Lcom/dawin/objects/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/dawin/objects/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/dawin/objects/b;->m:I

    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lcom/dawin/objects/b;->f:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/dawin/objects/b$4;

    invoke-direct {v2, p0}, Lcom/dawin/objects/b$4;-><init>(Lcom/dawin/objects/b;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    div-int/lit16 p1, p1, 0x3e8

    iget-object v1, p0, Lcom/dawin/objects/b;->o:Ljava/lang/String;

    const-string v2, "up"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, p1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/dawin/objects/b;->o:Ljava/lang/String;

    const-string v2, "down"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/dawin/objects/b;->p:I

    iget v2, p0, Lcom/dawin/objects/b;->q:I

    add-int/2addr v2, p1

    if-gt v1, v2, :cond_4

    iget v1, p0, Lcom/dawin/objects/b;->p:I

    if-le v1, p1, :cond_4

    iget v0, p0, Lcom/dawin/objects/b;->p:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/dawin/objects/b;->q:I

    iget v0, p0, Lcom/dawin/objects/b;->q:I

    :cond_4
    :goto_2
    rem-int/lit16 p1, v0, 0xe10

    div-int/lit8 v1, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    iget-object v2, p0, Lcom/dawin/objects/b;->n:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v2}, Lcom/dawin/objects/b;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/dawin/objects/b;->r:I

    if-eq v1, v0, :cond_5

    iput v0, p0, Lcom/dawin/objects/b;->r:I

    iget-object v0, p0, Lcom/dawin/objects/b;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/dawin/objects/b$5;

    invoke-direct {v1, p0, p1}, Lcom/dawin/objects/b$5;-><init>(Lcom/dawin/objects/b;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method
