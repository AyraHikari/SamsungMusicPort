.class public Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;
.super Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field a:I

.field b:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIIIII)V
    .locals 9

    mul-int v0, p2, p3

    move-object v8, p0

    move-object v3, p1

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;-><init>(Landroid/content/Context;I)V

    move-object v0, p0

    move v1, p3

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 45
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->a(IIIIIII)V

    return-void
.end method

.method private a(IIIIIII)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->g:I

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->f:I

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->e:I

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->d:I

    .line 61
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->a:I

    .line 62
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->b:I

    .line 63
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->h:I

    .line 64
    iput p4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->i:I

    .line 65
    iput p5, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->j:I

    .line 66
    iput p6, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->k:I

    .line 67
    iput p7, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->l:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method
