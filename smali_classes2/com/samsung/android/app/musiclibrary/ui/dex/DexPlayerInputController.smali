.class public final Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$DexGestureDetector;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DexPlayerInputController"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final d:Landroid/view/GestureDetector;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->b:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->c:Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    .line 33
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->e:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 35
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 47
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 71
    new-instance p1, Landroid/view/GestureDetector;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->b:Landroid/content/Context;

    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$DexGestureDetector;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$DexGestureDetector;-><init>(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$1;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->d:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)Landroid/view/GestureDetector;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->d:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)Z
    .locals 1

    const/16 v0, 0x89

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8b

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->c:Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    return-object p0
.end method

.method private b(I)Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->c:Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x8b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x13

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x89

    if-ne p1, v0, :cond_4

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->c:Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;->x_()V

    const/4 p1, 0x1

    goto :goto_2

    .line 110
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->c:Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;->g()Z

    move-result p1

    goto :goto_2

    .line 108
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->c:Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;->f()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->e:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-object p0
.end method

.method private c(I)Z
    .locals 1

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 122
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->e:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->c()V

    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 77
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown keyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->b(I)Z

    move-result p1

    goto :goto_1

    :cond_0
    const/16 p2, 0x3e

    if-eq p1, p2, :cond_2

    const/16 p2, 0x42

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 81
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->c(I)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 88
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp keyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->a(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x3e

    if-eq p1, p2, :cond_2

    const/16 p2, 0x42

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method
