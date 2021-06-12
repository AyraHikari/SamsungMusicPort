.class public final Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$Companion;


# instance fields
.field private final c:Landroid/widget/SeekBar;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;

.field private final l:Lkotlin/Lazy;

.field private final m:Lkotlin/Lazy;

.field private final n:Lkotlin/Lazy;

.field private final o:Lkotlin/Lazy;

.field private final p:Lkotlin/Lazy;

.field private final q:Lkotlin/Lazy;

.field private r:I

.field private s:Landroid/graphics/Rect;

.field private final t:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xe

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "listButton"

    const-string v4, "getListButton()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "favoriteButton"

    const-string v4, "getFavoriteButton()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "addButton"

    const-string v4, "getAddButton()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "timeGroup"

    const-string v4, "getTimeGroup()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "progressDrawable"

    const-string v4, "getProgressDrawable()Landroid/graphics/drawable/LayerDrawable;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "heightDelta"

    const-string v4, "getHeightDelta()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "popupWindowBottomPadding"

    const-string v4, "getPopupWindowBottomPadding()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "expandInterpolator"

    const-string v4, "getExpandInterpolator()Landroid/view/animation/Interpolator;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "expandAnimator"

    const-string v4, "getExpandAnimator()Landroid/animation/ValueAnimator;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "normalAnimator"

    const-string v4, "getNormalAnimator()Landroid/animation/ValueAnimator;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "contentView"

    const-string v4, "getContentView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "timePopupWindow"

    const-string v4, "getTimePopupWindow()Landroid/widget/PopupWindow;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "timeTextView"

    const-string v4, "getTimeTextView()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "positionY"

    const-string v4, "getPositionY()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->b:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->t:Landroid/content/Context;

    const p1, 0x7f13028a

    .line 19
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.seek_bar)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->c:Landroid/widget/SeekBar;

    .line 20
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$listButton$2;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$listButton$2;-><init>(Landroid/view/View;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->d:Lkotlin/Lazy;

    .line 21
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$favoriteButton$2;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$favoriteButton$2;-><init>(Landroid/view/View;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->e:Lkotlin/Lazy;

    .line 22
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$addButton$2;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$addButton$2;-><init>(Landroid/view/View;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->f:Lkotlin/Lazy;

    .line 23
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$timeGroup$2;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$timeGroup$2;-><init>(Landroid/view/View;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->g:Lkotlin/Lazy;

    .line 24
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$progressDrawable$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$progressDrawable$2;-><init>(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->h:Lkotlin/Lazy;

    .line 29
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$heightDelta$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$heightDelta$2;-><init>(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->i:Lkotlin/Lazy;

    .line 35
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$popupWindowBottomPadding$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$popupWindowBottomPadding$2;-><init>(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->j:Lkotlin/Lazy;

    .line 41
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandInterpolator$2;->INSTANCE:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandInterpolator$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->k:Lkotlin/Lazy;

    .line 44
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandAnimator$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandAnimator$2;-><init>(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->l:Lkotlin/Lazy;

    .line 56
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$normalAnimator$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$normalAnimator$2;-><init>(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->m:Lkotlin/Lazy;

    .line 71
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$contentView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$contentView$2;-><init>(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->n:Lkotlin/Lazy;

    .line 76
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$timePopupWindow$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$timePopupWindow$2;-><init>(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->o:Lkotlin/Lazy;

    .line 85
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$timeTextView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$timeTextView$2;-><init>(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->p:Lkotlin/Lazy;

    .line 90
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$positionY$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$positionY$2;-><init>(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->q:Lkotlin/Lazy;

    return-void
.end method

.method private final a(Landroid/widget/SeekBar;)I
    .locals 1

    const/4 v0, 0x2

    .line 154
    new-array v0, v0, [I

    .line 155
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->getLocationInWindow([I)V

    const/4 p1, 0x0

    .line 156
    aget p1, v0, p1

    return p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)Landroid/widget/SeekBar;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->c:Landroid/widget/SeekBar;

    return-object p0
.end method

.method private final a(Z)V
    .locals 6

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 99
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    check-cast v5, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 101
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    check-cast v5, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->h()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->i()Landroid/view/View;

    move-result-object v0

    const-string v1, "timeGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const/16 p1, 0x8

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->t:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)I
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->k()I

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->m()Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)Landroid/graphics/Rect;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->s:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)Landroid/graphics/drawable/LayerDrawable;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->j()Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    return-object p0
.end method

.method private final f()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final g()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)Landroid/view/View;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->p()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)I
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->l()I

    move-result p0

    return p0
.end method

.method private final h()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final i()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->g:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)Landroid/widget/TextView;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->r()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final j()Landroid/graphics/drawable/LayerDrawable;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->h:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method private final k()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final l()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->j:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final m()Landroid/view/animation/Interpolator;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->k:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private final n()Landroid/animation/ValueAnimator;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->l:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private final o()Landroid/animation/ValueAnimator;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->m:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private final p()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->n:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final q()Landroid/widget/PopupWindow;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->o:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private final r()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->p:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final s()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->q:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "currentTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->r()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "timeTextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->q()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final a(F)Z
    .locals 3

    .line 108
    iget v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->r:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/16 v1, 0x14

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    iget v2, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->r:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    float-to-int p1, p1

    .line 110
    iput p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->r:I

    :cond_1
    return v0
.end method

.method public final b()V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "seekBar.thumb"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->c:Landroid/widget/SeekBar;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a(Landroid/widget/SeekBar;)I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->q()Landroid/widget/PopupWindow;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->s()I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->c:Landroid/widget/SeekBar;

    check-cast v2, Landroid/view/View;

    const/16 v3, 0x33

    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->s()I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const/4 v0, 0x1

    .line 128
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a(Z)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->q()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a(Z)V

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->q()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 137
    iput v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->r:I

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->o()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->j()Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->s:Landroid/graphics/Rect;

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->n()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->n()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->j()Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->s:Landroid/graphics/Rect;

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->o()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
