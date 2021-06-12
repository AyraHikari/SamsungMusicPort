.class public Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field a:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private final b:Landroid/support/v4/app/Fragment;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a:I

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->c:I

    .line 69
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->d:I

    const/4 v0, 0x1

    .line 71
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->e:I

    .line 73
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DefaultDividerChecker;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DefaultDividerChecker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->f:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->e:I

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->f:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->c:I

    return p0
.end method

.method static synthetic e(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->d:I

    return p0
.end method


# virtual methods
.method public a(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 80
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a:I

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->f:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    return-object p0
.end method

.method public a()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    .locals 2

    .line 105
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;)V

    return-object v0
.end method

.method public b(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->c:I

    return-object p0
.end method

.method public c(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->d:I

    return-object p0
.end method
