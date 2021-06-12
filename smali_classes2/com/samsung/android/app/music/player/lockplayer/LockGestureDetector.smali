.class public final Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;,
        Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$Companion;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private d:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;

.field private e:Landroid/view/View$OnClickListener;

.field private final f:Lkotlin/Lazy;

.field private g:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "gestureDetector"

    const-string v4, "getGestureDetector()Landroid/view/GestureDetector;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "gestureListener"

    const-string v4, "getGestureListener()Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2$1;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->b:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureDetector$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureDetector$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;Landroid/content/Context;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->c:Lkotlin/Lazy;

    .line 14
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;Landroid/view/View;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->f:Lkotlin/Lazy;

    .line 55
    new-instance p1, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$1;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;)V

    check-cast p1, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private final a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F
    .locals 4

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 85
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p1, p1

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F

    move-result p0

    return p0
.end method

.method private final a()Landroid/view/GestureDetector;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GestureDetector;

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;)Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2$1;
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->b()Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;Landroid/view/MotionEvent;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->g:Landroid/view/MotionEvent;

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->e:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private final b()Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2$1;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$gestureListener$2$1;

    return-object v0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;)Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->d:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;)Landroid/view/GestureDetector;
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->a()Landroid/view/GestureDetector;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;)Landroid/view/MotionEvent;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->g:Landroid/view/MotionEvent;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;)V
    .locals 1

    const-string v0, "onGestureListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->d:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;

    return-void
.end method
