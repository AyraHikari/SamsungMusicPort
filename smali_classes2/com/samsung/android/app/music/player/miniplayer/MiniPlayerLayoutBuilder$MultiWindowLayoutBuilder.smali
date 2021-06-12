.class final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultiWindowLayoutBuilder"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private b:Landroid/support/constraint/ConstraintSet;

.field private c:Z

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

.field private final n:Landroid/app/Activity;

.field private final o:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "album"

    const-string v4, "getAlbum()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "controlGroup"

    const-string v4, "getControlGroup()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "prevButton"

    const-string v4, "getPrevButton()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "nextButton"

    const-string v4, "getNextButton()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "queueButton"

    const-string v4, "getQueueButton()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "titleText"

    const-string v4, "getTitleText()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "artistText"

    const-string v4, "getArtistText()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "miniButtonSize"

    const-string v4, "getMiniButtonSize()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "minSpaceMultiWindow"

    const-string v4, "getMinSpaceMultiWindow()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "minTextSizeMultiWindow"

    const-string v4, "getMinTextSizeMultiWindow()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->n:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->o:Landroid/view/View;

    .line 137
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$album$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$album$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->d:Lkotlin/Lazy;

    .line 140
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$controlGroup$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$controlGroup$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->e:Lkotlin/Lazy;

    .line 143
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$prevButton$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$prevButton$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->f:Lkotlin/Lazy;

    .line 146
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$nextButton$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$nextButton$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->g:Lkotlin/Lazy;

    .line 149
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$queueButton$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$queueButton$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->h:Lkotlin/Lazy;

    .line 152
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$titleText$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$titleText$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->i:Lkotlin/Lazy;

    .line 155
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$artistText$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$artistText$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->j:Lkotlin/Lazy;

    .line 158
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$miniButtonSize$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$miniButtonSize$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->k:Lkotlin/Lazy;

    .line 161
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$minSpaceMultiWindow$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$minSpaceMultiWindow$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->l:Lkotlin/Lazy;

    .line 164
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$minTextSizeMultiWindow$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$minTextSizeMultiWindow$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->m:Lkotlin/Lazy;

    return-void
.end method

.method private final a()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)Landroid/view/View;
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->d()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final a(I)V
    .locals 8

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->o:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a(Landroid/view/View;)V

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 230
    :pswitch_0
    sget-object p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->o:Landroid/view/View;

    .line 356
    :try_start_0
    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_0

    .line 357
    new-instance v1, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v1}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 358
    move-object v2, v0

    check-cast v2, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    const v3, 0x7f130413

    const/4 v4, 0x6

    const v5, 0x7f130417

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v1

    .line 232
    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const v3, 0x7f130413

    const/4 v4, 0x7

    const v5, 0x7f130417

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v1

    .line 234
    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 360
    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    goto/16 :goto_0

    .line 364
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v1, "SMUSIC-MiniPlayerLayoutBuilder"

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constraints not applied to view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constraints failed due to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    :pswitch_1
    sget-object p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->o:Landroid/view/View;

    .line 384
    :try_start_1
    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_2

    .line 385
    new-instance v1, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v1}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 386
    move-object v2, v0

    check-cast v2, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    const v3, 0x7f130413

    const/4 v4, 0x6

    const v5, 0x7f130259

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v1

    .line 240
    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const v3, 0x7f130413

    const/4 v4, 0x7

    const v5, 0x7f130417

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v1

    .line 242
    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 388
    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    goto :goto_0

    .line 392
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "SMUSIC-MiniPlayerLayoutBuilder"

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constraints not applied to view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constraints failed due to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_2
    sget-object p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->b:Landroid/support/constraint/ConstraintSet;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;Landroid/view/View;Landroid/support/constraint/ConstraintSet;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Landroid/view/View;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->b:Landroid/support/constraint/ConstraintSet;

    if-nez v0, :cond_1

    .line 171
    :try_start_0
    new-instance v0, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 172
    instance-of v1, p1, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_0

    .line 173
    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    .line 171
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->b:Landroid/support/constraint/ConstraintSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 177
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConstraintSet clone() failed due to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final b(Landroid/view/View;)I
    .locals 6

    .line 265
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 266
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 267
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "v"

    .line 268
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 269
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_1

    .line 270
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private final b()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)Landroid/view/View;
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->e()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final b(I)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->o:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;I)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final c()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)Landroid/view/View;
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->c()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final d()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->g:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)Landroid/view/View;
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final e()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->h:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)Landroid/view/View;
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->f()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final f()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)Landroid/view/View;
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->g()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final g()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->j:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)Landroid/view/View;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->o:Landroid/view/View;

    return-object p0
.end method

.method private final h()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->k:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)Landroid/view/View;
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->b()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final i()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->l:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)Landroid/app/Activity;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->n:Landroid/app/Activity;

    return-object p0
.end method

.method private final j()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->m:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final k()V
    .locals 4

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->b()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->l()I

    move-result v0

    .line 187
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a(I)V

    .line 188
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->b(I)V

    .line 189
    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;

    .line 341
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v1, "SMUSIC-MiniPlayerLayoutBuilder"

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustMultiWindowLayout() current step : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", parent width : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", (title/artist)text with : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->f()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", control group width : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", control group real width : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->b()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->b(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", control group left : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v3

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", album right : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", min text size : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->j()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private final l()I
    .locals 6

    .line 203
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->b()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->b(Landroid/view/View;)I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->i()I

    move-result v2

    sub-int/2addr v0, v2

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->h()I

    move-result v2

    sub-int v2, v0, v2

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->h()I

    move-result v3

    sub-int v3, v2, v3

    .line 209
    iget-object v4, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->o:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    if-le v3, v4, :cond_0

    const/4 v5, 0x5

    goto :goto_2

    .line 211
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->o:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    const/4 v5, 0x4

    goto :goto_2

    .line 213
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->o:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_2

    const/4 v5, 0x3

    goto :goto_2

    .line 215
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    sub-int v0, v1, v0

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->i()I

    move-result v2

    sub-int/2addr v0, v2

    if-gez v0, :cond_4

    const/4 v5, 0x2

    goto :goto_2

    .line 217
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    sub-int/2addr v1, v0

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->i()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->j()I

    move-result v0

    sub-int/2addr v1, v0

    if-gez v1, :cond_6

    const/4 v5, 0x1

    :cond_6
    :goto_2
    return v5
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 278
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;

    .line 412
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MiniPlayerLayoutBuilder"

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiWindowModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_1

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->o:Landroid/view/View;

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_1

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->o:Landroid/view/View;

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 286
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->c:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 288
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a(I)V

    .line 289
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->b(I)V

    .line 292
    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->c:Z

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p6, p2, :cond_0

    if-ne p7, p3, :cond_0

    if-ne p8, p4, :cond_0

    if-eq p9, p5, :cond_1

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->k()V

    :cond_1
    return-void
.end method
