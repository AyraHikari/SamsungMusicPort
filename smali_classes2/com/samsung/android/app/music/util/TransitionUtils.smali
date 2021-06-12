.class public Lcom/samsung/android/app/music/util/TransitionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "TransitionUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/transition/Transition;
    .locals 2

    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;-><init>()V

    :goto_0
    return-object v0
.end method

.method private static varargs a(Landroid/transition/Transition;[Ljava/lang/String;)Landroid/transition/Transition;
    .locals 3

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 202
    invoke-virtual {p0, v2}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static a(IIZ)Landroid/transition/TransitionSet;
    .locals 3

    .line 244
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 245
    new-instance v1, Landroid/transition/ChangeTransform;

    invoke-direct {v1}, Landroid/transition/ChangeTransform;-><init>()V

    .line 246
    new-instance v2, Lcom/samsung/android/app/music/view/transition/BeyondChangeRound;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/app/music/view/transition/BeyondChangeRound;-><init>(IIZ)V

    .line 247
    invoke-static {}, Lcom/samsung/android/app/music/util/TransitionUtils;->a()Landroid/transition/Transition;

    move-result-object p0

    const-string p1, "transition_name_player0"

    .line 249
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/TransitionUtils;->a(Landroid/transition/Transition;[Ljava/lang/String;)Landroid/transition/Transition;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const-string p0, "transition_name_player0"

    .line 250
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/music/util/TransitionUtils;->a(Landroid/transition/Transition;[Ljava/lang/String;)Landroid/transition/Transition;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const-string p0, "transition_name_player0"

    .line 251
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/app/music/util/TransitionUtils;->a(Landroid/transition/Transition;[Ljava/lang/String;)Landroid/transition/Transition;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 262
    invoke-static {p0}, Lcom/samsung/android/app/music/util/TransitionUtils;->b(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Landroid/app/Activity;)Z
    .locals 1

    .line 266
    instance-of v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    if-eqz v0, :cond_0

    .line 267
    check-cast p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->isMultiWindowMode()Z

    move-result p0

    return p0

    .line 269
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method
