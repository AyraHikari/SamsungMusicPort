.class final Lcom/samsung/android/app/music/background/Trajectory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/background/Trajectory$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/background/Trajectory$Companion;

.field private static final f:Lkotlin/Lazy;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/background/FrameState;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/background/FrameState;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/Trajectory;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "debugPaint"

    const-string v4, "getDebugPaint()Landroid/graphics/Paint;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/background/Trajectory;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/background/Trajectory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/background/Trajectory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/background/Trajectory;->b:Lcom/samsung/android/app/music/background/Trajectory$Companion;

    .line 149
    sget-object v0, Lcom/samsung/android/app/music/background/Trajectory$Companion$Empty$2;->INSTANCE:Lcom/samsung/android/app/music/background/Trajectory$Companion$Empty$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/background/Trajectory;->f:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(JLkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lcom/samsung/android/app/music/background/FrameState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "generator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    long-to-float p1, p1

    const p2, 0x3cf5c28f    # 0.03f

    mul-float p1, p1, p2

    float-to-int p2, p1

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    int-to-float v3, v2

    div-float/2addr v3, p1

    .line 110
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/background/FrameState;

    .line 109
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/music/background/Trajectory;->c:Ljava/util/List;

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/music/background/Trajectory;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v1, p1, :cond_1

    .line 113
    iget-object p3, p0, Lcom/samsung/android/app/music/background/Trajectory;->c:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/background/FrameState;

    .line 114
    new-instance v0, Lcom/samsung/android/app/music/background/FrameState;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p3}, Lcom/samsung/android/app/music/background/FrameState;->b()I

    move-result p3

    invoke-direct {v0, v2, p3}, Lcom/samsung/android/app/music/background/FrameState;-><init>(Landroid/graphics/PointF;I)V

    .line 112
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/app/music/background/Trajectory;->d:Ljava/util/List;

    .line 116
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/samsung/android/app/music/background/Trajectory$debugPaint$2;->INSTANCE:Lcom/samsung/android/app/music/background/Trajectory$debugPaint$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/background/Trajectory;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic b()Lkotlin/Lazy;
    .locals 1

    .line 108
    sget-object v0, Lcom/samsung/android/app/music/background/Trajectory;->f:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/background/FrameState;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/background/Trajectory;->d:Ljava/util/List;

    return-object v0
.end method

.method public final varargs a([Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/samsung/android/app/music/background/FrameState;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "transformers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/background/Trajectory;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 914
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_0
    check-cast v3, Lcom/samsung/android/app/music/background/FrameState;

    .line 127
    iget-object v5, p0, Lcom/samsung/android/app/music/background/Trajectory;->d:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/background/FrameState;

    .line 128
    invoke-virtual {v2}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 129
    invoke-virtual {v2}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v5, Landroid/graphics/PointF;->y:F

    .line 915
    array-length v3, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, p1, v5

    .line 131
    invoke-interface {v6, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-void
.end method
