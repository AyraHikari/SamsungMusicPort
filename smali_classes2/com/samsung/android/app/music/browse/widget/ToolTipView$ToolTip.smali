.class public Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/widget/ToolTipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToolTip"
.end annotation


# instance fields
.field private a:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private f:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)Landroid/view/View;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)Ljava/lang/String;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)I
    .locals 0

    .line 268
    iget p0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->a:I

    return p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)Ljava/lang/String;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)I
    .locals 0

    .line 268
    iget p0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->e:I

    return p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)I
    .locals 0

    .line 268
    iget p0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->f:I

    return p0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->g:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->b:Landroid/view/View;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->c:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ToolTip] message - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
