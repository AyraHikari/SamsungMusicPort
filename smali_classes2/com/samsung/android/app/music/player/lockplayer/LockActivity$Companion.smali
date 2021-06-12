.class public final Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "LOG_PRINTABLE"

    const-string v4, "getLOG_PRINTABLE()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 511
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;Ljava/lang/String;)V
    .locals 0

    .line 511
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-LockPlayer"

    .line 521
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final a()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a()Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;)Z
    .locals 0

    .line 511
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    new-instance v0, Landroid/content/Intent;

    .line 540
    const-class v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    .line 538
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x10010000

    .line 541
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method
