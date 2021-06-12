.class public final Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;


# instance fields
.field private final a:Z

.field private b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowModeChangedObservers$1;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowSizeChangedObservers$1;

.field private final e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->e:Landroid/app/Activity;

    .line 16
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->a:Z

    .line 32
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowModeChangedObservers$1;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowModeChangedObservers$1;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowModeChangedObservers$1;

    .line 45
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowSizeChangedObservers$1;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowSizeChangedObservers$1;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->d:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowSizeChangedObservers$1;

    .line 58
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v0, :cond_1

    .line 59
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->e:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->d:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowSizeChangedObservers$1;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowSizeChangedObservers$1;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowModeChangedObservers$1;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowModeChangedObservers$1;->a(Z)V

    return-void
.end method

.method public a()Z
    .locals 3

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->c()Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public addOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowModeChangedObservers$1;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowModeChangedObservers$1;->a(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->isMultiWindowMode()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;->a(Z)V

    return-void
.end method

.method public addOnMultiWindowSizeChangedListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->d:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowSizeChangedObservers$1;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowSizeChangedObservers$1;->a(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;)V

    return-void
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->b()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    return-object v0
.end method

.method public c()I
    .locals 3

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->a:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->b()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    const-string v2, "activity.windowManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 118
    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_0
    return v0
.end method

.method public d()I
    .locals 3

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->a:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->b()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    const-string v2, "activity.windowManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 129
    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_0
    return v0
.end method

.method public isMultiWindowMode()Z
    .locals 2

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->d()V

    :cond_0
    const/4 p1, 0x0

    .line 101
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    return-void
.end method

.method public removeOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowModeChangedObservers$1;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowModeChangedObservers$1;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnMultiWindowSizeChangedListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->d:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowSizeChangedObservers$1;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowSizeChangedObservers$1;->b(Ljava/lang/Object;)V

    return-void
.end method
