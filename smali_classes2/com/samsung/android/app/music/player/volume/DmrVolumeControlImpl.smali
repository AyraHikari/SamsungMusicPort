.class public final Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/volume/IVolumeControl;


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/res/Resources;

.field private final d:Z

.field private final e:Lkotlin/Lazy;

.field private final f:I

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Z

.field private final j:Landroid/app/Activity;

.field private final k:Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "panel"

    const-string v4, "getPanel()Landroid/widget/PopupWindow;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "dmrButtonClickListener"

    const-string v4, "getDmrButtonClickListener()Landroid/view/View$OnClickListener;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "onDismissListener"

    const-string v4, "getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "panelChangedListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->j:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->k:Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;

    .line 29
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->j:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->b:Landroid/content/Context;

    .line 30
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->j:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->c:Landroid/content/res/Resources;

    .line 31
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isSmartViewVolumeControlSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->d:Z

    .line 32
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$panel$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$panel$2;-><init>(Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->e:Lkotlin/Lazy;

    .line 36
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->c:Landroid/content/res/Resources;

    const p2, 0x7f100457

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->f:I

    .line 38
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2;-><init>(Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->g:Lkotlin/Lazy;

    .line 50
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$onDismissListener$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$onDismissListener$2;-><init>(Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->h:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;)Landroid/view/View;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->j()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final a(Landroid/view/View;)V
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f1302cb

    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->k()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 104
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;)V

    .line 105
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->b:Landroid/content/Context;

    const v4, 0x7f0b041a

    invoke-static {v3, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    const v1, 0x7f1302cc

    .line 108
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->k()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 111
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;)V

    .line 112
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->b:Landroid/content/Context;

    const v4, 0x7f0b0419

    invoke-static {v3, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    const v1, 0x7f1302ca

    .line 115
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    move-object p1, v2

    :goto_2
    if-eqz v0, :cond_5

    .line 118
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;)V

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->b:Landroid/content/Context;

    const v1, 0x7f0b03f8

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;)Landroid/widget/PopupWindow;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->m()Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->n()V

    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;)Landroid/widget/PopupWindow;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->i()Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;)Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->k:Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;

    return-object p0
.end method

.method private final i()Landroid/widget/PopupWindow;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private final j()Landroid/view/View;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->j:Landroid/app/Activity;

    const v1, 0x7f1305c9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final k()Landroid/view/View$OnClickListener;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->g:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private final l()Landroid/widget/PopupWindow$OnDismissListener;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->h:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method private final m()Landroid/widget/PopupWindow;
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->j:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0400b6

    .line 73
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 75
    new-instance v2, Landroid/widget/PopupWindow;

    .line 77
    iget-object v3, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->c:Landroid/content/res/Resources;

    const v4, 0x7f1001f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 78
    iget-object v4, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->c:Landroid/content/res/Resources;

    const v5, 0x7f1001f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    .line 75
    invoke-direct {v2, v0, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 82
    iget-object v3, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->c:Landroid/content/res/Resources;

    const v4, 0x7f020147

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 81
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "panelView"

    .line 84
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1001f5

    .line 85
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const v1, 0x7f11024f

    .line 87
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 88
    new-instance v1, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$createDmrVolumePanel$$inlined$apply$lambda$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$createDmrVolumePanel$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;Landroid/view/View;)V

    check-cast v1, Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 95
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-object v2
.end method

.method private final n()V
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->k:Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;->a(Z)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->d()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->i()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->i:Z

    return v0
.end method

.method public d()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->k:Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;->a(Z)V

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->i()Landroid/widget/PopupWindow;

    move-result-object v0

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->l()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 127
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "contentView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->a(Landroid/view/View;)V

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->j()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    invoke-static {}, Lcom/samsung/android/app/music/util/UiUtils;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->i()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->i()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    .line 135
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->i()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->j()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->f:I

    neg-int v3, v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->k:Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;->a(Z)V

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->i()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->d:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    :pswitch_0
    return v1

    .line 167
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/player/volume/VolumeController;->b:Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->dlnaDmrVolumeUp()V

    goto :goto_0

    .line 168
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/player/volume/VolumeController;->b:Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;->b(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->dlnaDmrVolumeDown()V

    goto :goto_0

    .line 169
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->b(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setDlnaDmrMute()V

    .line 172
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->n()V

    return v1

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->d:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    :pswitch_0
    return v1

    .line 185
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/music/player/volume/VolumeController;->b:Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    sget-object v0, Lcom/samsung/android/app/music/player/volume/VolumeController;->b:Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;->b(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public x_()V
    .locals 0

    return-void
.end method
