.class final Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/menu/PlayerMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeMenu"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field final synthetic b:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

.field private final c:Lcom/samsung/android/app/music/player/volume/VolumeControllable;

.field private final d:Lkotlin/Lazy;

.field private e:Landroid/view/MenuItem;

.field private f:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "onVolumeUpdateListener"

    const-string v4, "getOnVolumeUpdateListener()Lcom/samsung/android/app/music/player/volume/VolumeControllable$OnVolumeUpdateListener;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->b:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    invoke-static {p1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->g(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/music/player/volume/VolumeControllable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/player/volume/VolumeControllable;

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->c:Lcom/samsung/android/app/music/player/volume/VolumeControllable;

    .line 289
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu$onVolumeUpdateListener$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu$onVolumeUpdateListener$2;-><init>(Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->d:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;)Landroid/view/MenuItem;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->e:Landroid/view/MenuItem;

    return-object p0
.end method

.method private final a()Lcom/samsung/android/app/music/player/volume/VolumeControllable$OnVolumeUpdateListener;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/volume/VolumeControllable$OnVolumeUpdateListener;

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;Landroid/view/MenuItem;)V
    .locals 0

    .line 287
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->b(Landroid/view/MenuItem;)V

    return-void
.end method

.method private final b(Landroid/view/MenuItem;)V
    .locals 6

    if-eqz p1, :cond_7

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->b:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->c:Lcom/samsung/android/app/music/player/volume/VolumeControllable;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/VolumeControllable;->i()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 327
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->f:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_3

    .line 328
    iget-object v3, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->b:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v3}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->d(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v3

    if-eqz v0, :cond_2

    const v4, 0x7f020239

    goto :goto_1

    :cond_2
    const v4, 0x7f020238

    :goto_1
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 335
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->f:Ljava/lang/Boolean;

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->b:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->g()Z

    move-result v0

    const v3, 0x7f0b0418

    if-ne v0, v2, :cond_4

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->b:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->b(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "context"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    iget-object v4, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->b:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v4}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->b(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v4

    const-string v5, "SecAudioManager.getInstance(context)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolumePercent()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "% "

    .line 342
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v4, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->b:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v4}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->b(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 347
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->c:Lcom/samsung/android/app/music/player/volume/VolumeControllable;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/VolumeControllable;->h()Z

    move-result v0

    if-ne v0, v2, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 348
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1305c9

    .line 304
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->e:Landroid/view/MenuItem;

    .line 305
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->e:Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    .line 306
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->b(Landroid/view/MenuItem;)V

    .line 307
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->c:Lcom/samsung/android/app/music/player/volume/VolumeControllable;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->a()Lcom/samsung/android/app/music/player/volume/VolumeControllable$OnVolumeUpdateListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/player/volume/VolumeControllable;->a(Lcom/samsung/android/app/music/player/volume/VolumeControllable$OnVolumeUpdateListener;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 300
    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f1305c9

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->c:Lcom/samsung/android/app/music/player/volume/VolumeControllable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/app/music/player/volume/VolumeControllable;->j()V

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
