.class public final Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CircleRenderingState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$Companion;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

.field private final f:Lcom/samsung/android/app/music/background/ColorGenerator;

.field private final g:Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

.field private final k:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;

.field private final n:Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;

.field private final o:Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;

.field private final p:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

.field private final q:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

.field private final r:Lkotlin/properties/ReadOnlyProperty;

.field private final s:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

.field private final t:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "centerPaint"

    const-string v4, "getCenterPaint()Landroid/graphics/Paint;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "musicCircleDrawable"

    const-string v4, "getMusicCircleDrawable()Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "circleDrawable"

    const-string v4, "getCircleDrawable()Lcom/samsung/android/app/music/background/CircleDrawable;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "color"

    const-string v4, "getColor()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "x"

    const-string v4, "getX()F"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "y"

    const-string v4, "getY()F"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "radius"

    const-string v4, "getRadius()F"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "alpha"

    const-string v4, "getAlpha()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "globalAlpha"

    const-string v4, "getGlobalAlpha$music_marketRelease()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "paint"

    const-string v4, "getPaint()Landroid/graphics/Paint;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "colorFilter"

    const-string v4, "getColorFilter()Landroid/graphics/ColorFilter;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->b:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->t:Landroid/content/Context;

    .line 314
    sget-object p1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$centerPaint$2;->INSTANCE:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$centerPaint$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->c:Lkotlin/Lazy;

    .line 933
    new-instance p1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$1;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->d:Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    .line 321
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 934
    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$updatedPaintField$1;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$updatedPaintField$1;-><init>(Ljava/lang/Object;Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    iput-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->e:Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    .line 935
    new-instance p1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$colorGenerator$1;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$colorGenerator$1;-><init>(I)V

    check-cast p1, Lcom/samsung/android/app/music/background/ColorGenerator;

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->f:Lcom/samsung/android/app/music/background/ColorGenerator;

    .line 936
    new-instance p1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$2;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->g:Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    .line 344
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$musicCircleDrawable$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$musicCircleDrawable$2;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->h:Lkotlin/Lazy;

    .line 347
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$circleDrawable$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$circleDrawable$2;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->i:Lkotlin/Lazy;

    .line 937
    new-instance p1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$1;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$1;-><init>(ILcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->j:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    .line 365
    new-instance p1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$invalidateShaderMatrix$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$invalidateShaderMatrix$1;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->k:Lkotlin/jvm/functions/Function1;

    .line 368
    new-instance p1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$invalidateAlpha$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$invalidateAlpha$1;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->l:Lkotlin/jvm/functions/Function1;

    .line 371
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->k:Lkotlin/jvm/functions/Function1;

    .line 938
    new-instance v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$floatObservableWithInitial$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$floatObservableWithInitial$1;-><init>(Lkotlin/jvm/functions/Function1;F)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;

    iput-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->m:Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;

    .line 372
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->k:Lkotlin/jvm/functions/Function1;

    .line 939
    new-instance v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$floatObservableWithInitial$2;

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$floatObservableWithInitial$2;-><init>(Lkotlin/jvm/functions/Function1;F)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;

    iput-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->n:Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;

    .line 940
    new-instance p1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$floatObservableWithInitial$3;

    invoke-direct {p1, v2, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$floatObservableWithInitial$3;-><init>(FLcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->o:Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;

    .line 385
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->l:Lkotlin/jvm/functions/Function1;

    .line 941
    new-instance v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$2;

    const/16 v2, 0xff

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$2;-><init>(Lkotlin/jvm/functions/Function1;I)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    iput-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->p:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    .line 387
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->l:Lkotlin/jvm/functions/Function1;

    .line 942
    new-instance v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$3;

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$3;-><init>(Lkotlin/jvm/functions/Function1;I)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    iput-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->q:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    const/4 p1, 0x3

    .line 388
    new-array p1, p1, [Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->d:Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    aput-object v1, p1, v0

    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->g:Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    const/4 v2, 0x1

    aput-object v1, p1, v2

    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->e:Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    const/4 v3, 0x2

    aput-object v1, p1, v3

    .line 943
    new-instance v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$paintDelegate$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$paintDelegate$1;-><init>([Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;)V

    check-cast v1, Lkotlin/properties/ReadOnlyProperty;

    iput-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->r:Lkotlin/properties/ReadOnlyProperty;

    .line 396
    new-array p1, v2, [Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->h()Landroid/graphics/Paint;

    move-result-object v1

    aput-object v1, p1, v0

    .line 946
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Paint;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 947
    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$paintColorFilter$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$paintColorFilter$1;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    iput-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->s:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)Lcom/samsung/android/app/music/background/ColorGenerator;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->f:Lcom/samsung/android/app/music/background/ColorGenerator;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)Landroid/content/Context;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->t:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)Lcom/samsung/android/app/music/background/CircleDrawable;
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->g()Lcom/samsung/android/app/music/background/CircleDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->e:Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->d:Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    return-object p0
.end method

.method private final g()Lcom/samsung/android/app/music/background/CircleDrawable;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/background/CircleDrawable;

    return-object v0
.end method

.method private final h()Landroid/graphics/Paint;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->r:Lkotlin/properties/ReadOnlyProperty;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadOnlyProperty;->b(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->j:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)I

    move-result v0

    return v0
.end method

.method public final a(F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->m:Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;F)V

    return-void
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->j:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;I)V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 913
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 293
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->b()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->d()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->c()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->d()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 296
    invoke-direct {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->g()Lcom/samsung/android/app/music/background/CircleDrawable;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->h()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/background/CircleDrawable;->setAlpha(I)V

    .line 297
    invoke-direct {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->g()Lcom/samsung/android/app/music/background/CircleDrawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/background/CircleDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v1
.end method

.method public final a(Landroid/graphics/ColorFilter;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->s:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->m:Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)F

    move-result v0

    return v0
.end method

.method public final b(F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->n:Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;F)V

    return-void
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->p:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;I)V

    return-void
.end method

.method public final c()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->n:Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)F

    move-result v0

    return v0
.end method

.method public final c(F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->o:Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;F)V

    return-void
.end method

.method public final c(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->q:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;I)V

    return-void
.end method

.method public final d()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->o:Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)F

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->p:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->q:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CircleRenderingState(color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->b()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", globalAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
