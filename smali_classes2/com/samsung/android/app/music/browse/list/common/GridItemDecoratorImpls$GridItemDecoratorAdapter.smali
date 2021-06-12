.class Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$GridItemDecoratorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/GridItemDecorator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GridItemDecoratorAdapter"
.end annotation


# instance fields
.field protected final a:Z

.field protected final b:Z

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$GridItemDecoratorAdapter;->c:Landroid/app/Activity;

    .line 67
    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$GridItemDecoratorAdapter;->a:Z

    .line 68
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    .line 69
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->isMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$GridItemDecoratorAdapter;->b:Z

    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$GridItemDecoratorAdapter;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public a()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
