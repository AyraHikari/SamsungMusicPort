.class public abstract Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController$Companion;

.field private static final g:Landroid/net/Uri;


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->a:Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController$Companion;

    const-string v0, "content://empty"

    .line 123
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->g:Landroid/net/Uri;

    return-void
.end method

.method private final a(IF)I
    .locals 1

    const/4 v0, 0x0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 65
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->b:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    if-nez p2, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->getCount()I

    move-result p2

    rem-int/2addr p1, p2

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 67
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->b:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    if-nez p2, :cond_2

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->getCount()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->b:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    if-nez p2, :cond_3

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->getCount()I

    move-result p2

    rem-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method private final a(I)Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;
    .locals 5

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 104
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->g:Landroid/net/Uri;

    const-wide/16 v1, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;-><init>(Landroid/net/Uri;J)V

    return-object p1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->b:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    if-nez v0, :cond_1

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->getAlbArtUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "albArtUri"

    .line 107
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "albArtUri.lastPathSegment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 108
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "albArtUri.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 109
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->b(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object p1

    .line 110
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;-><init>(Landroid/net/Uri;J)V

    return-object v2
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;)Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    return-object p0
.end method

.method private final a(IIF)V
    .locals 3

    const-string v0, "PlayerBackgroundController"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateView selectedItemPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->c:Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->a(I)Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;->a(Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;)V

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->c:Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController$updateView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController$updateView$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;Lkotlin/jvm/functions/Function2;)V

    const-string p1, "PlayerBackgroundController"

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView nextItemPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->d:Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->a(I)Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;->a(Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;)V

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->f:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->d:Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController$updateView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController$updateView$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;Lkotlin/jvm/functions/Function2;)V

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p3, p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setFraction(F)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->b:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    return-void
.end method

.method private final a()Z
    .locals 2

    .line 113
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->b:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->b:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;
    .locals 1

    .line 20
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->b:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    if-nez p0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public onAnimationFinished(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->a(IIF)V

    return-void
.end method

.method public onAnimationStarted(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->a(IIF)V

    return-void
.end method

.method public onAnimationUpdate(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;FI)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->a()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->a(IF)I

    move-result p1

    .line 53
    invoke-direct {p0, p3, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/background/PlayerBackgroundController;->a(IIF)V

    return-void
.end method
