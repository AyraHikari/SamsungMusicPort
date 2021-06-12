.class public final Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/app/music/player/volume/IVolumeControl;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;,
        Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$Companion;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/content/res/Resources;

.field private final e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

.field private final f:Z

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:F

.field private final k:I

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSeekBar;

.field private o:Landroid/widget/TextView;

.field private p:Z

.field private q:Z

.field private r:Lkotlinx/coroutines/Job;

.field private final s:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

.field private final t:Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "accessibilityDelegate"

    const-string v4, "getAccessibilityDelegate()Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "panel"

    const-string v4, "getPanel()Landroid/widget/PopupWindow;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

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

    sput-object v0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->b:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "panelChangedListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->s:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->t:Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->s:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->c:Landroid/content/Context;

    .line 45
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->s:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->d:Landroid/content/res/Resources;

    .line 46
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 47
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isSmartViewVolumeControlSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->f:Z

    .line 48
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$accessibilityDelegate$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$accessibilityDelegate$2;-><init>(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->g:Lkotlin/Lazy;

    .line 53
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$panel$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$panel$2;-><init>(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->h:Lkotlin/Lazy;

    .line 54
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2;-><init>(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->i:Lkotlin/Lazy;

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->d:Landroid/content/res/Resources;

    const-string p2, "resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    const/4 v0, 0x1

    const v1, 0x7f100459

    .line 424
    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 425
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->j:F

    .line 72
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->d:Landroid/content/res/Resources;

    const p2, 0x7f100457

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->k:I

    const-string p1, "1000"

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->l:Ljava/lang/String;

    .line 80
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->p:Z

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Landroid/view/View;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->m()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final a(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->m:Z

    if-eqz v0, :cond_1

    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSeekBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSeekBar;->setProgress(I)V

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->t:Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;->a()V

    .line 250
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->b(I)V

    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f1302c8

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->o:Landroid/widget/TextView;

    const v0, 0x7f1302c9

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSeekBar;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSeekBar;

    .line 202
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSeekBar;

    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    const-string v1, "audioManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getMaxVolume()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSeekBar;->setMax(I)V

    .line 204
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->j()Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;

    move-result-object v0

    check-cast v0, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 205
    new-instance v0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)V

    check-cast v0, Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSeekBar;->setOnSeekBarChangeListener(Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->c(I)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->l:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->q:Z

    return-void
.end method

.method private final a(ZI)Z
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    if-ne p2, v2, :cond_1

    .line 329
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    const-string v3, "audioManager"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result p1

    iget-object v3, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    const-string v4, "audioManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getMaxVolume()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 330
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {p1, v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->adjustStreamVolume(III)V

    .line 331
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->r()V

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->q()V

    return v2

    :cond_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 336
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    const-string v3, "audioManager"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result p1

    if-lez p1, :cond_2

    .line 337
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {p1, v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->adjustStreamVolume(III)V

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->r()V

    .line 340
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->q()V

    return v2

    :cond_3
    return v1

    :cond_4
    const-string p1, "1000"

    .line 345
    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->l:Ljava/lang/String;

    .line 346
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {p1, v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->adjustStreamVolume(III)V

    .line 347
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->q()V

    return v2
.end method

.method private final b(I)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolumeNumber(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->b(I)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->m:Z

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->p:Z

    return p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    return-object p0
.end method

.method private final c(I)V
    .locals 7

    .line 373
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->r:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 374
    :cond_0
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;-><init>(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->r:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->t:Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Z
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->t()Z

    move-result p0

    return p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Landroid/widget/PopupWindow;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->o()Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Landroid/widget/PopupWindow;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->k()Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method private final j()Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->g:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;

    return-object v0
.end method

.method private final k()Landroid/widget/PopupWindow;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->h:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private final l()Landroid/widget/PopupWindow$OnDismissListener;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method private final m()Landroid/view/View;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->s:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    const v1, 0x7f130285

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final n()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final o()Landroid/widget/PopupWindow;
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->s:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0400b5

    .line 106
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 108
    new-instance v2, Landroid/widget/PopupWindow;

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->p()I

    move-result v3

    .line 111
    iget-object v4, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->d:Landroid/content/res/Resources;

    const v5, 0x7f1001f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    .line 108
    invoke-direct {v2, v0, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 114
    iget-object v3, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->d:Landroid/content/res/Resources;

    const v4, 0x7f020147

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 113
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "panelView"

    .line 116
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1001f5

    .line 117
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    const/4 v1, 0x1

    .line 118
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const v1, 0x7f11024f

    .line 119
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 120
    new-instance v1, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createNormalVolumePanel$$inlined$apply$lambda$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createNormalVolumePanel$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;Landroid/view/View;)V

    check-cast v1, Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 127
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-object v2
.end method

.method private final p()I
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->s:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isMultiWindowMode()Z

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->s:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isScaleWindow()Z

    move-result v1

    const-string v2, "UiPlayer"

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NormalVolumeControlImpl getVolumePanelWidth isMultiWindowMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isScaleWindowMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 139
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 140
    iget-object v2, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->s:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    const-string v3, "activity.windowManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 143
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->s:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getMultiWindowRectInfo()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_0

    .line 146
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    int-to-float v2, v1

    .line 149
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    float-to-int v0, v0

    .line 150
    iget-object v3, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->s:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x19b

    if-le v0, v3, :cond_3

    .line 151
    iget v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->j:F

    mul-float v2, v2, v0

    float-to-int v1, v2

    goto :goto_2

    .line 156
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->s:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    const-string v2, "activity.windowManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 158
    iget-object v1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->s:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->j:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_1
    move v1, v0

    goto :goto_2

    .line 161
    :cond_2
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    :cond_3
    :goto_2
    return v1
.end method

.method private final q()V
    .locals 2

    .line 269
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->t:Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;->a(Z)V

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->d()V

    return-void
.end method

.method private final r()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSeekBar;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private final s()Z
    .locals 4

    .line 357
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->q:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->r:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->b()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_0
    const-string v0, "UiPlayer"

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NormalVolumeControlImpl isUpdatingVolumeLevel()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " volumeChangedFromUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-boolean v3, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->q:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " active="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->r:Lkotlinx/coroutines/Job;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lkotlinx/coroutines/Job;->b()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v1
.end method

.method private final t()Z
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->r:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->n()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->k()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    const-string v1, "audioManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAllSoundOff(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 172
    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->adjustStreamVolume(III)V

    return-void

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->k()Landroid/widget/PopupWindow;

    move-result-object v0

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->l()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 179
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const-string v2, "contentView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->a(Landroid/view/View;)V

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->m()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 181
    invoke-static {}, Lcom/samsung/android/app/music/util/UiUtils;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 186
    :goto_0
    iget v3, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->k:I

    neg-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->t:Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;->a(Z)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    const-string v1, "audioManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->a(I)V

    const/4 v0, -0x1

    .line 193
    iget-object v1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isSafeMediaVolumeDeviceOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    const-string v1, "audioManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getEarProtectLimitIndex()I

    move-result v0

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSeekBar;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSeekBar;->setOverlapPointForDualColor(I)V

    :cond_4
    return-void
.end method

.method public e()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->t:Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;->a(Z)V

    .line 259
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->k()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public f()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 313
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->a(ZI)Z

    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 318
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->a(ZI)Z

    return v0
.end method

.method public i()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->toggleMute()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->n()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 283
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/player/volume/VolumeController;->b:Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, v2}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->a(ZI)Z

    move-result p1

    return p1

    .line 287
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/player/volume/VolumeController;->b:Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;->b(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, -0x1

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->a(ZI)Z

    move-result p1

    return p1

    .line 291
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->b(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->i()V

    return v2

    :cond_3
    return v1

    nop

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

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->n()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    :pswitch_0
    return v1

    .line 307
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    sget-object v0, Lcom/samsung/android/app/music/player/volume/VolumeController;->b:Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 309
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

.method public final onStart()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->p:Z

    return-void
.end method

.method public final onStop()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->r:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    :cond_0
    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->p:Z

    return-void
.end method

.method public x_()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->toggleMute()V

    return-void
.end method
